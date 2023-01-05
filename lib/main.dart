import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/resume.dart';
import 'package:portfolio/work.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xff60C689),
        secondaryHeaderColor: Color(0xffD9D9D9),
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/about': (context) => const About(),
        '/work': (context) => const Work(),
        '/resume': (context) => const Resume(),
        '/contact': (context) => const Contact(),
      },
    );
  }
}
