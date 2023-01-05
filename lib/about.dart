import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Up Soon!",
              style: TextStyle(
                  fontFamily: "DMmono",
                  fontSize: 48,
                  color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }
}
