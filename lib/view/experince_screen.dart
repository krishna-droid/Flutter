import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black)),
      body: Column(
        children: [
          experienceHeaderWidget(),
          experienceDescriptionWidget(),
        ],
      ),
    );
  }

  Widget experienceHeaderWidget() {
    return Column(
      children: [
        ElasticIn(
            child: SvgPicture.asset("assets/images/work svg.svg", height: 100)),
        ElasticIn(
          child: const Text(
            "EXPERIENCE",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
      ],
    );
  }

  Widget experienceDescriptionWidget() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Web Designer",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Text(
                "Deliverbag",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                "Oct 2022 - Present",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "My extensive experience in web designer has allowed me to excel in wireframing, project management, prototyping, UI/UX design, and proficiency in Figma software. Through my work, I have developed a keen eye for delivering captivating interfaces and creating user-friendly websites that leave a lasting impression.",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              )
            ],
          ),
        ),
      ],
    );
  }
}
