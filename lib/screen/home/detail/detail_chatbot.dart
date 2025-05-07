import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../../../data/models/message.dart';

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

  bool isGreating(String prompt) {
    const greetings = ['hai', 'hello', 'hallo', 'hi', 'selamat pagi', 'selamat siang', 'selamat malam'];
    return greetings.any((greeting) => prompt.toLowerCase() == greeting);
  }

  bool isTravelingRelated(String prompt) {
    const travelKeywords = [
      "travel",
      "wisata",
      "destinasi",
      "hotel",
      "perjalanan",
      "akomodasi",
      "transportasi",
      "liburan",
      "tiket",
    ];
    return travelKeywords.any((keyword) => prompt.toLowerCase().contains(keyword));
  }

  bool isTransportationQuestion(String prompt) {
  const transportKeywords = [
    "kendaraan",
    "transportasi",
    "mobil",
    "motor",
    "bus",
    "kereta",
    "pesawat",
    "kapal"
  ];
  return transportKeywords.any((keyword) => prompt.toLowerCase().contains(keyword));
}

String getTransportOptions() {
  return "Kendaraan yang bisa Anda gunakan untuk perjalanan adalah:\n"
      "- Mobil\n"
      "- Motor\n"
      "- Bus\n"
      "- Kereta api\n"
      "- Pesawat\n"
      "- Kapal laut";
}

  callGeminiModel() async {
    try {
      if (_controller.text.isNotEmpty) {
        _message.add(Message(text: _controller.text, isUser: true));
        _isLoading = true;
      }

      final prompt = _controller.text.trim();

      // Periksa apakah input adalah greeting
    if (isGreating(prompt)) {
      setState(() {
        _message.add(Message(
          text: "Halo! Bagaimana saya bisa membantu perjalanan Anda hari ini?",
          isUser: false,
        ));
        _isLoading = false;
      });
      _controller.clear();
      return;
    }

        // Periksa apakah pertanyaan tentang kendaraan
    if (isTransportationQuestion(prompt)) {
      setState(() {
        _message.add(Message(
          text: getTransportOptions(),
          isUser: false,
        ));
        _isLoading = false;
      });
      _controller.clear();
      return;
    }

      if(!isTravelingRelated(prompt)) {
        setState(() {
          _message.add(Message(
            text: "Maaf, saya hanya bisa menjawab pertanyaan terkait travel.", 
            isUser: false
            ));
        _isLoading = false;
        });
        _controller.clear();
        return;
      }

      final model = GenerativeModel(
        model: 'gemini-2.0-flash',
        apiKey: dotenv.env['GEMINI_API_KEY']!,
      );
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
      setState(() {
        _message.add(Message(
          text: "Terjadi kesalahan. silahkan cobalagi nanti.", 
          isUser: false
          ));
          _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),
        centerTitle: true,
        title: Text(
          'Chat Bot',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
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
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
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
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
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
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
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
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.secondary,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onSubmitted: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      style: TextStyle(color: Color(0xff7B5131)),
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Tulis pertanyaan terkait Travel...',
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
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      )
                      : IconButton(
                        onPressed: () {
                          callGeminiModel();
                          FocusScope.of(context).unfocus();
                        },
                        icon: Icon(
                          Icons.send_rounded,
                          color: Theme.of(context).colorScheme.secondary,
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
