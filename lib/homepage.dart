import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
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
                        color: Colors.white70,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.7),
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
    );
  }
}
