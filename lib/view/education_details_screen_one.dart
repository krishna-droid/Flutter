import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';

class EducationDetailsScreenOne extends StatefulWidget {
  const EducationDetailsScreenOne({Key? key}) : super(key: key);

  @override
  State<EducationDetailsScreenOne> createState() =>
      _EducationDetailsScreenOneState();
}

class _EducationDetailsScreenOneState extends State<EducationDetailsScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonData().commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [_headerWidget(), _detailsWidget()],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Column(
      children: [
        ElasticIn(
            child: SvgPicture.asset("assets/images/education svg.svg",
                height: 80)),
        const SizedBox(
          height: 25,
        ),
        ElasticIn(
          child: const Text(
            "EDUCATION",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget _detailsWidget() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 18,
                offset: const Offset(15, 10),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
          margin: const EdgeInsets.only(top: 20, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CommonData().educationDetails[0]["institution"],
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(CommonData().educationDetails[0]["degree"]),
              Text(CommonData().educationDetails[0]["timeline"]),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "During my Bachelor's degree in Web Development at the Digital Campus, I acquired a wide range of skills and knowledge in various aspects of the field. I became proficient in programming languages such as Python and Dart, utilizing them for tasks involving JSON manipulation, data handling, and application development with frameworks like Flutter. Additionally, I gained expertise in wireframing, project management, user interface design, and user experience (UX) principles, using tools like Figma to bring concepts to life. In terms of databases and back-end technologies, I worked with MongoDB, Node.js, and Express.js to develop robust and scalable web applications. Front-end development was also a significant focus, with experience in React.js and HTML5 for creating engaging and responsive user interfaces. Moreover, I enhanced my creativity and design skills through working with Adobe InDesign, Illustrator, Photoshop, Premiere Pro, and Acrobat. Throughout my time at the Digital Campus, I further developed my problem-solving abilities, allowing me to approach challenges with a strategic mindset.",
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        )
      ],
    );
  }
}
