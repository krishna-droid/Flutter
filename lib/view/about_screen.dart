import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonData().commonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerWidget(),
            descriptionWidget(),
          ],
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Column(
      children: [
        ElasticIn(
            child: SvgPicture.asset("assets/images/about svg.svg", height: 80)),
        const SizedBox(
          height: 10,
        ),
        ElasticIn(
          child: const Text(
            "ABOUT",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }

  Widget descriptionWidget() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 15,
                offset: Offset(6, 8),
              ),
            ],
          ),
          child: const Text(
            "I'm Krishnaraj CHIDAMBARAM, a passionate Full Stack Developer and UI/UX Designer with a knack for bringing websites to life with seamless functionality and captivating designs. 🌎 🎨My expertise lies in HTML5, CSS3, Sass, and JavaScript, allowing me to create visually stunning and user-friendly digital experiences 👾 I'm well-versed in frameworks like Bootstrap, React.js, and Express, and I have a deep understanding of Node.js and MongoDB for efficient server-side development. 🚀🍃But my skills don't end there! With a creative arsenal consisting of Figma, Adobe Photoshop, Illustrator, and InDesign, I specialize in UI/UX design, wireframing, and creating engaging visual elements. 🎨I'm always excited to explore new technologies like Flutter, Dart, and Python, which allow me to create innovative cross-platform solutions. 📱🐍",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
