import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:chat_app/splash_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // TODO: Replace credentials with your own
    url: 'https://vkrebzkksccataibmayv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZrcmViemtrc2NjYXRhaWJtYXl2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTcwNTA0MDksImV4cCI6MjAzMjYyNjQwOX0.6a-lQgk6_hH7lAq9o5EdkNuBS-YztGRZfbv5X7rnbmE'
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
