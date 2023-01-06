import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/resume.dart';
import 'package:portfolio/work.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    Work(),
    About(),
    LandingPage(),
    Resume(),
    Contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              radius: 20,
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("WORK"),
            ),
            SizedBox(width: 60),
            InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("ABOUT"),
            ),
            SizedBox(width: 80),
            InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/');
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                splashColor: Colors.transparent,
                child: Image.asset("assets/logo.png")),
            SizedBox(width: 80),
            InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("RESUME"),
            ),
            SizedBox(width: 60),
            InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("CONTACT"),
            ),
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 60),
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            begin: Alignment(0, 1),
            end: Alignment(0, 0),
            colors: [
              Color(0xffD9D9D9).withOpacity(0.10),
              Color(0xffD9D9D9).withOpacity(0),
            ],
          )),
          child: _children[_currentIndex]),
    );
  }

  Widget textTheme(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: 'DMsans',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white60,
            letterSpacing: 2),
      ),
    );
  }
}
