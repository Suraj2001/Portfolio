import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/portfolioTheme.dart';
import 'package:portfolio/scrollcontroller.dart';

class Resume extends StatefulWidget {
  final Function(int) onTap;
  const Resume({super.key, required this.onTap});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    List<Widget> languages = [
      item("Python"),
      item("Java"),
      item("Dart"),
      item("SQL"),
      item("Javascript"),
      item("Typescript"),
      item("C++"),
    ];
    List<Widget> frameworks = [
      item("HTML5"),
      item("CSS"),
      item("Flask"),
      item("Angular"),
      item("Django"),
      item("React"),
      item("SpringBoot"),
      item("Flutter"),
    ];
    List<Widget> tools = [
      item("Git"),
      item("GitHub"),
      item("MS Office"),
      item("VScode"),
      item("Photoshop"),
      item("Figma"),
      item("Illustrator"),
    ];

    List<List> list = [
      [
        "Performed duties like greeting the guests, ticket scanning, ushering and various other roles.",
        "Provided exceptional customer service to guests by answering questions about events/tickets and directing the crowd as needed.",
        "Helping with set up or tear down of sports events."
      ],
      [
        "Internship included numerous modules which were to be developed using Angular framework with backend processes in SpringBoot technology.",
        "Admin Panel was a major project wherein I developed the portal from scratch with login, task, and location modules integrated with backend services for dynamic response.",
        "Generated a database for storing essential information and applied CRUD operations."
      ],
      [
        "Leading and Managing the web & graphics team for the national level technical fest with more than 1k+ students participating across various events.",
        "Planned, Devised and Oversaw the team strategy to create banners, posters, logos and other graphic designing tasks for around 10 events.",
      ],
      [
        "Developed dynamic and interactive android/iOS application using cross-platform framework Flutter with dart as a programming language.",
        "Planned, Devised and Oversaw the team strategy to create banners, posters, logos and other graphic designing tasks for around 10 events."
      ],
      [
        "Worked closely with the project colleagues to establish a system which ensures easy interaction and management of the library.",
        "Model is designed in such a way that it can be implemented in any university at cheaper cost.",
        "Provide an efficient way for students to view and manage library related stuff."
      ],
      [
        "Characterizing each customer into a particular segment using the RFM model after preprocessing and visualizing data distribution.",
        "Using k-means and forest classifier, the result generated by RFM model was verified and predicted customer profitability over time based on time series.",
      ],
      [
        "Performed exploratory data analysis using Python for a given dataset of a retail store by plotting various data visualization graphs. ",
        "Designed various machine learning models to predict weekly sales across multiple stores and analyze the impact of external factors on the prediction.",
        "Applied different classification algorithms and performed hyper-parameter tuning for the Deep Learning models."
      ]
    ];
    List<List> socialMedia = [
      [
        "http://www.linkedin.com/in/surajshah2001",
        "Linkedin",
        'assets/linkedin.png',
      ],
      [
        "https://github.com/Suraj2001",
        "Github",
        'assets/github.png',
      ],
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xff333639),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Image.asset(
                        'assets/profile.png',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Suraj Shah",
                      style: PortfolioTheme.heading.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -1),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Graduate Student",
                      style: PortfolioTheme.highlightText
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Shahsuraj741@gmail.com",
                      style: PortfolioTheme.subHeading,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "www.surajshah01.me",
                      style: PortfolioTheme.subHeading,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 4;
                        });
                        widget.onTap(currentIndex);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                          textStyle: const TextStyle(
                              fontFamily: 'Gotham',
                              fontWeight: FontWeight.w500),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, // thickness
                                  color: Colors.white // color
                                  ),
                              // border radius
                              borderRadius: BorderRadius.circular(16))),
                      child: const Text("Contact Me"),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xff333639),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView.builder(
                    itemCount: socialMedia.length,
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          launchURL(socialMedia[index][0]);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  socialMedia[index][1],
                                  style: PortfolioTheme.subHeading.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  socialMedia[index][2],
                                  scale: 1.5,
                                ),
                              ],
                            ),
                            index == socialMedia.length - 1
                                ? Container()
                                : Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    height: 0.2,
                                    color: PortfolioTheme.nearlyWhite,
                                  ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
          const SizedBox(width: 40),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child: ListView(
              padding: const EdgeInsets.all(0),
              controller: AdjustableScrollController(60),
              children: [
                Text(
                  "Experience",
                  style: PortfolioTheme.heading
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 20),
                Text(
                  "Event Staff @ CSULB",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "March 2022 - Present",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[0].length, list[0]),
                const SizedBox(height: 20),
                Text(
                  "Software Engineer Intern @ Cutting Edge Infotech",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "Jan 2022 - June 2022",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[1].length, list[1]),
                const SizedBox(height: 20),
                Text(
                  "Web & Graphics Head @ Vision X",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "Sep 2019 - Oct 2019",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[2].length, list[2]),
                const SizedBox(height: 20),
                Text(
                  "Projects",
                  style: PortfolioTheme.heading
                      .copyWith(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 20),
                Text(
                  "Campus Management System | Flutter, Dart",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "6 months",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[3].length, list[3]),
                const SizedBox(height: 20),
                Text(
                  "Library Management System | PHP, SQL",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "2 months",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[4].length, list[4]),
                const SizedBox(height: 20),
                Text(
                  "RFM based Customer Segmentation | Python, AI",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "1 month",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[5].length, list[5]),
                const SizedBox(height: 20),
                Text(
                  "Retail Market Analysis and Growth | Python, AI",
                  style: PortfolioTheme.title,
                ),
                Text(
                  "1 month",
                  style: PortfolioTheme.date,
                ),
                listBuilder(list[6].length, list[6]),
                const SizedBox(height: 40),
                Text(
                  "Skills",
                  style: PortfolioTheme.heading.copyWith(fontSize: 26),
                ),
                const SizedBox(height: 20),
                Text(
                  "Languages",
                  style: PortfolioTheme.heading.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 16,
                  runSpacing: 2,
                  children: languages,
                ),
                const SizedBox(height: 20),
                Text(
                  "Web/App Development",
                  style: PortfolioTheme.heading.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 16,
                  runSpacing: 2,
                  children: frameworks,
                ),
                const SizedBox(height: 20),
                Text(
                  "Tools",
                  style: PortfolioTheme.heading.copyWith(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 16,
                  runSpacing: 2,
                  children: tools,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listBuilder(int length, List list) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        shrinkWrap: true,
        itemCount: length,
        itemBuilder: (BuildContext context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              const Text(
                "\u2022",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  list[index],
                  style: PortfolioTheme.subHeading,
                  overflow: TextOverflow.fade,
                  maxLines: 3,
                ),
              ),
            ],
          );
        });
  }

  Widget item(String text) {
    return Text(text, style: PortfolioTheme.subHeading);
  }

  Widget bullet() {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: const BoxDecoration(
        color: Colors.white70,
        shape: BoxShape.circle,
      ),
    );
  }
}
// return ListView(
//       padding: EdgeInsets.only(top: 40),
//       primary: true,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.25,
//                   padding: EdgeInsets.all(22),
//                   decoration: BoxDecoration(
//                     color: const Color(0xff2C2C2C),
//                     borderRadius: BorderRadius.circular(44),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 50,
//                         child: Image.asset(
//                           'assets/profile.png',
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         "Suraj Shah",
//                         style: PortfolioTheme.heading.copyWith(fontSize: 20),
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         "Graduate Student @ CSULB",
//                         style: PortfolioTheme.highlightText,
//                       ),
//                       const SizedBox(height: 20),
//                       Text(
//                         "Surajnandkishor.shah01@student.csulb.edu",
//                         style: PortfolioTheme.subHeading,
//                       ),
//                       Text(
//                         "www.surajshah01.me",
//                         style: PortfolioTheme.subHeading,
//                       ),
//                       const SizedBox(height: 20),
//                       Row(
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {
//                               setState(() {
//                                 currentIndex = 4;
//                               });
//                               widget.onTap(currentIndex);
//                             },
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.transparent,
//                                 elevation: 0,
//                                 padding:
//                                     const EdgeInsets.fromLTRB(20, 16, 20, 16),
//                                 textStyle: const TextStyle(
//                                     fontFamily: 'Gotham',
//                                     fontWeight: FontWeight.w500),
//                                 shape: RoundedRectangleBorder(
//                                     side: const BorderSide(
//                                         width: 1, // thickness
//                                         color: Colors.white // color
//                                         ),
//                                     // border radius
//                                     borderRadius: BorderRadius.circular(16))),
//                             child: const Text("Contact Me"),
//                           ),
//                           const SizedBox(width: 20),
//                           InkWell(
//                             onTap: () {
//                               launchURL(
//                                   "http://www.linkedin.com/in/surajshah2001");
//                             },
//                             child: Image.asset(
//                               'assets/linkedin.png',
//                               scale: 1.5,
//                             ),
//                           ),
//                           const SizedBox(width: 20),
//                           InkWell(
//                             onTap: () {
//                               launchURL("https://github.com/Suraj2001");
//                             },
//                             child: Image.asset(
//                               'assets/github.png',
//                               scale: 1.5,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.25,
//                   padding: EdgeInsets.all(22),
//                   decoration: BoxDecoration(
//                     color: const Color(0xff2C2C2C),
//                     borderRadius: BorderRadius.circular(44),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Languages",
//                         style: PortfolioTheme.heading,
//                       ),
//                       const SizedBox(height: 10),
//                       Wrap(
//                         spacing: 16,
//                         runSpacing: 4,
//                         children: languages,
//                       ),
//                       const SizedBox(height: 30),
//                       Text(
//                         "Web/App Development",
//                         style: PortfolioTheme.heading,
//                       ),
//                       const SizedBox(height: 10),
//                       Wrap(
//                         spacing: 16,
//                         runSpacing: 4,
//                         children: frameworks,
//                       ),
//                       const SizedBox(height: 30),
//                       Text(
//                         "Tools",
//                         style: PortfolioTheme.heading,
//                       ),
//                       Wrap(
//                         spacing: 16,
//                         runSpacing: 4,
//                         children: tools,
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(width: 40),
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 0.55,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Experience",
//                     style: PortfolioTheme.heading.copyWith(fontSize: 24),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Event Staff @ CSULB",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "March 2022 - Present",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[0].length, list[0]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Software Engineer Intern @ Cutting Edge Infotech",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "Jan 2022 - June 2022",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[0].length, list[0]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Web & Graphics Head @ Prakarsh XV",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "Dec 2019 - Feb 2020",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[1].length, list[1]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Web & Graphics Head @ Vision X",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "Sep 2020 - Oct 2020",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[2].length, list[2]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Projects",
//                     style: PortfolioTheme.heading.copyWith(fontSize: 24),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Campus Management System | Flutter, Dart",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "6 months",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[3].length, list[3]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Library Management System | PHP, SQL",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "2 months",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[4].length, list[4]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "RFM based Customer Segmentation | Python, AI",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "1 months",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[5].length, list[5]),
//                   const SizedBox(height: 20),
//                   Text(
//                     "Retail Market Analysis and Growth | Python, AI",
//                     style: PortfolioTheme.title,
//                   ),
//                   Text(
//                     "1 months",
//                     style: PortfolioTheme.date,
//                   ),
//                   listBuilder(list[6].length, list[6]),
//                   const SizedBox(height: 40),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ],
//     );