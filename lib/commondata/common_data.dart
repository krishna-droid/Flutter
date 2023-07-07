import 'package:flutter/material.dart';

class CommonData {
  List images = [
    "assets/images/profile.png",
    "assets/images/heart.png",
    "assets/images/work.png",
    "assets/images/study.png",
    "assets/images/analytics.png",
    "assets/images/file.png",
  ];

  List details = [
    "Krishnaraj KONGANAPURAM",
    "03/09/1999",
    "Krishnakc995@gmail.com",
    "+33610373970",
    "Vitry-sur-seine"
  ];

  List<Map<String, dynamic>> educationDetails = [
    {
      "institution": "DIGITAL CAMPUS",
      "degree": "Bachelor's degree in Web development",
      "timeline": "Sep 2021 - Sep 2024"
    },
    {
      "institution": "EPITA: Ecole d'Ingénieurs en Informatique",
      "degree": "Bachelor's degree in Computer Science ",
      "timeline": "Sep 2018 - April 2021"
    },
  ];

  PreferredSizeWidget commonAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  List skills = [
    "Programming Languages: Python, Dart",
    "Frameworks and Libraries: Flutter, Node.js, Express.js, React.js",
    "Data Management: JSON, MongoDB",
    "Web Development: HTML5, CSS",
    "Wireframing and Design: Figma, Adobe InDesign, Adobe Illustrator, Adobe Photoshop",
    "Video Editing: Adobe Premiere Pro",
    "Document Editing: Adobe Acrobat",
  ];

  List codingSkill = [
    "Mathematics",
    "Problem Solving",
    "Data Structures",
    "Project Management",
    "User Interface Design (UI)",
    "user Experience (UX)"
  ];
}
