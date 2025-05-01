import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../../../data/message.dart';

class DetailChatbot extends StatefulWidget {
  const DetailChatbot({super.key});

  @override
  State<DetailChatbot> createState() => _DetailChatbotState();
}

class _DetailChatbotState extends State<DetailChatbot> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _message = [];

  bool _isLoading = false;

  String cleanResponse(String response) {
    return response.replaceAll('*', '');
  }

  callGeminiModel() async {
    try {
      if (_controller.text.isNotEmpty) {
        _message.add(Message(text: _controller.text, isUser: true));
        _isLoading = true;
      }

      final model = GenerativeModel(
        model: 'gemini-2.0-flash',
        apiKey: dotenv.env['GEMINI_API_KEY']!,
      );
      final prompt = _controller.text.trim();
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);

      setState(() {
        String cleanedResponse = cleanResponse(response.text!);
        _message.add(Message(text: cleanedResponse, isUser: false));
        _isLoading = false;
      });
      _controller.clear();
    } catch (e) {
      print('error : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff7B5131)),
        centerTitle: true,
        title: Text(
          'Chat Bot',
          style: TextStyle(color: Color(0xff7B5131), fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _message.length,
              itemBuilder: (context, index) {
                final message = _message[index];
                return ListTile(
                  title: Align(
                    alignment:
                        message.isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration:
                          message.isUser
                              ? BoxDecoration(
                                color: Color(0xffFBF4E3),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff7B5131),
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              )
                              : BoxDecoration(
                                color: Color(0xffFBF4E3),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff7B5131),
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                      child: Text(
                        message.text,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color:
                              message.isUser
                                  ? Color(0xff7B5131)
                                  : Color(0xffBD4F0A),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBF4E3),
                boxShadow: [
                  BoxShadow(color: Color(0xff7B5131), offset: Offset(0, 4)),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onSubmitted: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Ask anything',
                        hintStyle: TextStyle(
                          color: Color(0xff7B5131),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                  _isLoading
                      ? Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(),
                        ),
                      )
                      : IconButton(
                        onPressed: () {
                          callGeminiModel();
                          FocusScope.of(context).unfocus();
                        },
                        icon: Icon(
                          Icons.send_rounded,
                          color: Color(0xff7B5131),
                        ),
                      ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
