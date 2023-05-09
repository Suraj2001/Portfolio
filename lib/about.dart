import 'package:flutter/material.dart';
import 'package:portfolio/portfolioTheme.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      children: [
        Center(
          child: Text(
            "About Me",
            style: TextStyle(
                color: PortfolioTheme.kPrimaryColor.withOpacity(0.15),
                fontFamily: "DMsans",
                letterSpacing: 5.5,
                fontWeight: FontWeight.w700,
                fontSize: 200),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.7,
              child: Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(44),
                    child: Image.asset(
                      "assets/pic4.JPEG",
                      fit: BoxFit.fitWidth,
                      alignment: const Alignment(0, -0.5),
                    ),
                  )),
            ),
            const SizedBox(width: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: 220,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: const Color(0xff2C2C2C),
                borderRadius: BorderRadius.circular(44),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey, I'm \nSuraj Shah",
                    style: PortfolioTheme.heading
                        .copyWith(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Graduate Student at California State University, Long Beach",
                    style: PortfolioTheme.highlightText,
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: 220,
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 40),
              decoration: BoxDecoration(
                color: const Color(0xff2C2C2C),
                borderRadius: BorderRadius.circular(44),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: PortfolioTheme.heading
                        .copyWith(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Coming from a computer science background and having participated as a volunteer to team lead in significant events, forming a dynamic combination of both nontechnical and technical experiences, along with accomplishing substantial projects during my undergrad, gives me the confidence that I would be an excellent fit to any situation.",
                    style: PortfolioTheme.subHeading,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: 220,
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 40),
              decoration: BoxDecoration(
                color: const Color(0xff2C2C2C),
                borderRadius: BorderRadius.circular(44),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Education",
                    style: PortfolioTheme.heading
                        .copyWith(fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                  education(
                      'California State University | ',
                      "Long Beach, CA",
                      "4/4",
                      "Master of Science in Computer Science",
                      "Aug 2022 – May 2024 (Expected)"),
                  Spacer(),
                  education(
                      "Gujarat Technological University | ",
                      "Gujarat, India",
                      "8.96/10",
                      "Bachelor of Engineering in Computer Engineering",
                      "Aug 2018 – May 2022")
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Widget education(String university, String location, String gpa,
      String course, String date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RichText(
                text: TextSpan(
                    text: university,
                    style: const TextStyle(
                        fontFamily: "DMsans",
                        fontSize: 20,
                        color: Color(0xffD1D1D1)),
                    children: <TextSpan>[
                  TextSpan(
                      text: location,
                      style: const TextStyle(fontStyle: FontStyle.italic))
                ])),
            const Spacer(),
            Text(
              gpa,
              style: PortfolioTheme.highlightText
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(course,
            style: const TextStyle(
                fontFamily: "DMsans", fontSize: 18, color: Colors.white38)),
        Text(date,
            style: const TextStyle(
                fontFamily: "DMsans",
                fontStyle: FontStyle.italic,
                fontSize: 12,
                color: Colors.white12))
      ],
    );
  }
}
