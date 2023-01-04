import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button("WORK", context),
              const SizedBox(width: 60),
              button("ABOUT", context),
              const SizedBox(width: 100),
              InkWell(onTap: () {}, child: Image.asset("assets/logo.png")),
              const SizedBox(width: 100),
              button("RESUME", context),
              const SizedBox(width: 60),
              button("CONTACT", context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, top: 2),
                          child: Text(
                            "Hey, I'm Suraj",
                            style: TextStyle(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 0.5
                                ..color = Colors.white,
                              fontSize: 80,
                              fontFamily: 'gotham',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Text(
                          "Hey, I'm Suraj",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontFamily: 'gotham',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Graduate Student at CSULB and working upon front-end skills.",
                      style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'DMsans',
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "There is lot to know about me, you can head on to my resume for brief summary of my background.",
                      style: TextStyle(
                          fontFamily: 'DMsans',
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                        textStyle: const TextStyle(
                            fontFamily: 'DMsans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),
                      ),
                      child: const Text("Check out!"),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/illustration.png",
                    scale: 1.3,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget button(String title, BuildContext context) {
    bool val = false;
    return ElevatedButton(
      onPressed: () {},
      onHover: (value) {
        setState(() {
          val = value;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            val ? Theme.of(context).primaryColorLight : Colors.black,
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        textStyle: const TextStyle(
            fontFamily: 'DMsans',
            fontWeight: FontWeight.w400,
            letterSpacing: 2),
      ),
      child: Text(title),
    );
  }
}
