import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/innerShadow.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      children: [
        Center(
          child: Text(
            "All Works",
            style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(0.15),
                fontFamily: "DMsans",
                letterSpacing: 5.5,
                fontWeight: FontWeight.w700,
                fontSize: 200),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            workCard(
                context,
                "CMS SVIT",
                "Get personalized academic performance, college updates and much more related to SVIT, Vasad.",
                ["Flutter", "Dart", "Figma", "VScode"],
                "assets/svit.png"),
            workCard(
              context,
              "Library Management System",
              "Library Management System ensures easy interaction and management of the library.",
              ["PHP", "SQL", "Figma", "VScode"],
              "assets/lms.png",
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            workCard(
                context,
                "Customer Segmentation",
                "Characterizing each customer into a particular segment using the RFM model.",
                ["Python", "Scikit-learn", "Jupyter-Notebook"],
                "assets/customer.png"),
            workCard(
              context,
              "Retail Market Analysis",
              "Machine learning models to predict and analyze weekly sales across multiple stores.",
              ["Python", "Scikit-learn", "Jupyter-Notebook"],
              "assets/market.png",
            )
          ],
        ),
      ],
    );
  }

  Widget workCard(BuildContext context, String title, String subtitle,
      List<String> list, String image) {
    return InnerShadow(
      blur: 15,
      offset: const Offset(-18, -19),
      color: Colors.black.withOpacity(0.2),
      child: Container(
        height: 240,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: const Color(0xff2C2C2C),
          borderRadius: BorderRadius.circular(44),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(44),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 30, right: 150, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: "DMsans",
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.5,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        fontFamily: "DMsans",
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white70),
                  ),
                  const Spacer(),
                  Row(
                    children: List.generate(
                        list.length, (index) => listItem(list[index])),
                  )
                ],
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  image,
                  scale: 1.5,
                ))
          ]),
        ),
      ),
    );
  }

  Widget listItem(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: "DMMono",
          color: Colors.white70,
        ),
      ),
    );
  }
}
