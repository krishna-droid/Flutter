import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';
import 'package:kartik_portfolio/view/education_details_screen_one.dart';

import 'education_details_screen_two.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonData().commonAppBar(),
      body: Column(
        children: [educationHeaderWidget(), educationDetailsWidget()],
      ),
    );
  }

  Widget educationHeaderWidget() {
    return Column(
      children: [
        ElasticIn(
            child: SvgPicture.asset("assets/images/education svg.svg",
                height: 80)),
        const SizedBox(
          height: 22,
        ),
        ElasticIn(
          child: const Text(
            "EDUCATION",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget educationDetailsWidget() {
    return Expanded(
      child: ListView.builder(
        itemCount: CommonData().educationDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EducationDetailsScreenOne(),
                  ),
                );
              }
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EducationDetailsScreenTwo(),
                  ),
                );
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(6, 12),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CommonData().educationDetails[index]["institution"],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    CommonData().educationDetails[index]["degree"],
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    CommonData().educationDetails[index]["timeline"],
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
