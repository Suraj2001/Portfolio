import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.45,
                color: Colors.black,
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.45,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.55,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 140),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const RiveAnimation.asset('assets/portfolio1.riv')),
          ),
          Stack(
            children: [
              Positioned(
                left: 194,
                top: MediaQuery.of(context).size.height / 2.47,
                child: Text(
                  "I'm \nSuraj Shah",
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0.5
                      ..color = Colors.white,
                    fontSize: 98,
                    fontFamily: 'gotham',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I'm \nSuraj Shah",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 98,
                        fontFamily: 'gotham',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 8,
                      width: 160,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                          textStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2),
                        ),
                        child: Text(
                          "About",
                        ),
                      ),
                      SizedBox(width: 40),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                            textStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2),
                          ),
                          child: Text("Projects")),
                      SizedBox(width: 40),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                            textStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2),
                          ),
                          child: Text("Resume")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0, top: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "— INTRODUCTION",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Front-End Developer \nwith pinch of knowledge in \nBack-End technology ",
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Myraid',
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "There is lot to know about me, you can head \non to my resume for brief summary of my \nbackground.",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
