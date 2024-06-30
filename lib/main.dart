import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';
import 'package:flutter_whatsapp_clone/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Whatsapp',
        theme: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.dark(
          background: backgroundColor,
        )),
        home: const LoginScreen());
  }
}
