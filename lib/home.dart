import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/portfolioTheme.dart';
import 'package:portfolio/resume.dart';
import 'package:portfolio/work.dart';

int currentIndex = 2;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _children = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _children = [
      const Work(),
      const About(),
      LandingPage(
        onTap: (p0) {
          setState(() {});
        },
      ),
      Resume(
        onTap: (p0) {
          setState(() {});
        },
      ),
      const Contact(),
    ];
  }

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
                  currentIndex = 0;
                });
              },
              borderRadius: BorderRadius.circular(6),
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("WORK", currentIndex, 0),
            ),
            const SizedBox(width: 60),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              borderRadius: BorderRadius.circular(6),
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("ABOUT", currentIndex, 1),
            ),
            const SizedBox(width: 80),
            InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/');
                  setState(() {
                    currentIndex = 2;
                  });
                },
                splashColor: Colors.transparent,
                child: Image.asset("assets/logo.png")),
            const SizedBox(width: 80),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              borderRadius: BorderRadius.circular(6),
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("RESUME", currentIndex, 3),
            ),
            const SizedBox(width: 60),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              borderRadius: BorderRadius.circular(6),
              hoverColor: Theme.of(context).primaryColor.withOpacity(0.5),
              splashColor: Colors.transparent,
              child: textTheme("CONTACT", currentIndex, 4),
            ),
          ],
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 60),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: const Alignment(0, 1),
            end: const Alignment(0, 0),
            colors: [
              const Color(0xffD9D9D9).withOpacity(0.15),
              const Color(0xffD9D9D9).withOpacity(0),
            ],
          )),
          child: _children[currentIndex]),
    );
  }

  Widget textTheme(String title, int index, int actualIndex) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        decoration: BoxDecoration(
            color: index == actualIndex
                ? PortfolioTheme.kPrimaryColor.withOpacity(0.6)
                : Colors.transparent,
            border: Border(
              left: BorderSide(
                color: index == actualIndex
                    ? PortfolioTheme.kPrimaryColor
                    : Colors.transparent,
                width: 4.0,
              ),
              // bottom: BorderSide(
              //   color: index == actualIndex
              //       ? PortfolioTheme.kPrimaryColor.withOpacity(0.6)
              //       : Colors.transparent,
              //   width: 1.0,
              // ),
            )),
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'DMsans',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white60,
              letterSpacing: 2),
        ),
      ),
    );
  }
}
