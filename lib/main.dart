import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_travella_app/data/riverpod/theme_riverpod.dart';
import 'package:flutter_travella_app/nav_route.dart';
import 'package:flutter_travella_app/ui/widgets/navbar.dart';
import 'package:flutter_travella_app/screen/splash/splash_screen.dart';
import 'package:flutter_travella_app/ui/styles/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: 'SUPABASE_URL', anonKey: "SUPABASE_KEY");
  runApp(
    ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeRiverpod);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavRoute.splashRoute.name,
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: themeMode,
      routes: {
        NavRoute.splashRoute.name: (context) => const SplashScreen(),
        NavRoute.navBar.name: (context) => const Navbar(),
      },
    );
  }
}
