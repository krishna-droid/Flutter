import 'package:flutter/material.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';
import 'package:kartik_portfolio/view/about_screen.dart';
import 'package:kartik_portfolio/view/education_screen.dart';
import 'package:kartik_portfolio/view/profile_screen.dart';
import 'package:kartik_portfolio/view/projects_screen.dart';
import 'package:kartik_portfolio/view/skills_screen.dart';
import 'experince_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _headerWidget(),
            _detailWidget2(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return const Column(
      children: [
        Text(
          "Welcome to My Portfolio",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget _detailWidget2() {
    return Column(
      children: [
        commonRowForDisplayOpt(
          0,
          1,
          const ProfileScreen(),
          const AboutScreen(),
        ),
        commonRowForDisplayOpt(
          2,
          3,
          const ExperienceScreen(),
          const EducationScreen(),
        ),
        commonRowForDisplayOpt(
          4,
          5,
          const SkillScreens(),
          const ProjectsScreen(),
        )
      ],
    );
  }

  commonRowForDisplayOpt(
    int fIndex,
    int sIndex,
    Widget fOnTap,
    Widget sOnTap,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => fOnTap,
            ),
          ),
          child: Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.symmetric(vertical: 35),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Image.asset(CommonData().images[fIndex]),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => sOnTap,
            ),
          ),
          child: Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.symmetric(vertical: 35),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Image.asset(CommonData().images[sIndex]),
          ),
        ),
      ],
    );
  }
}
