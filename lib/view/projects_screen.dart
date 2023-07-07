import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonData().commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            projectHeaderWidget(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(15, 10),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'PORTFOLIO',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '-CODING',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "I have crafted a captivating portfolio using the power of HTML, CSS, JavaScript, and React.js. Through meticulous design and seamless functionality, my portfolio showcases my expertise, projects, and skills in an engaging and interactive manner. ",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(15, 10),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'Light’s Off ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '- UI /UX ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(11, 208, 208, 1)),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Witness the remarkable transformation of an existing website in our captivating college project. Through collaboration, we conducted a comprehensive survey, gathering valuable insights for a meticulous redesign. Prepare to be amazed by our seamless blend of aesthetics and functionality. Enter a world where user satisfaction is paramount, and experience the unparalleled user interface we have crafted.",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 12,
                    offset: Offset(15, 10),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: 'UNDERKULTURE',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '-VIDEO',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(11, 208, 208, 1)),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Our team of 5 students collaborated with Underkulture, a renowned t-shirt brand, to create an exciting college project—an outstanding advertisement video. With paid actors, I took on the roles of script writing and video editing using Premiere Pro. Crafting a compelling script and bringing the vision to life through seamless video editing, we delivered a visually captivating advertisement experience. Join us on this incredible journey where creativity and teamwork shine.",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget projectHeaderWidget() {
    return Column(
      children: [
        ElasticIn(
          child: SvgPicture.asset("assets/images/project svg.svg", height: 80),
        ),
        ElasticIn(
          child: const Text(
            "PROJECTS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
      ],
    );
  }
}
