import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/home.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  Paint.enableDithering = true;
  await Motion.instance.initialize();

  /// Globally set Motion's update interval to 60 frames per second.
  Motion.instance.setUpdateInterval(60.fps);
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
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
