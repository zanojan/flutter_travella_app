import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_travella_app/nav_route.dart';
import 'package:flutter_travella_app/navbar.dart';
import 'package:flutter_travella_app/screen/splash/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart ' as provider;

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: 'SUPABASE_URL', anonKey: "SUPABASE_KEY");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavRoute.splashRoute.name,
      routes: {
        NavRoute.splashRoute.name: (context) => const SplashScreen(),
        NavRoute.navBar.name: (context) => const Navbar(),
      },
    );
  }
}
