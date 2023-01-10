import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/resume.dart';
import 'package:portfolio/work.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

launchURL(url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
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
    );
  }
}
