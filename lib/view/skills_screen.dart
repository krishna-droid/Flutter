import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';

class SkillScreens extends StatefulWidget {
  const SkillScreens({Key? key}) : super(key: key);

  @override
  State<SkillScreens> createState() => _SkillScreensState();
}

class _SkillScreensState extends State<SkillScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonData().commonAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center, child: skillsHeaderWidget()),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Technical Skills",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              technicalSkillsWidget(),
              const Text(
                "Core Skills:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              codingSkillWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget skillsHeaderWidget() {
    return Column(
      children: [
        ElasticIn(
            child: SvgPicture.asset("assets/images/skill svg.svg", height: 70)),
        ElasticIn(
          child: const Text(
            "SKILLS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
      ],
    );
  }

  Widget technicalSkillsWidget() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: CommonData().skills.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Text(CommonData().skills[index]),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget codingSkillWidget() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: CommonData().codingSkill.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Text(CommonData().codingSkill[index]),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
