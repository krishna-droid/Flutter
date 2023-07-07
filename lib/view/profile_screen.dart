import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kartik_portfolio/commondata/common_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonData().commonAppBar(),
      backgroundColor: Colors.white,
      body: BounceInDown(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            _profileHeaderWidget(),
            _profileDetailsWidget(),
          ],
        ),
      ),
    );
  }

  Widget _profileHeaderWidget() {
    return const Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/images/profile picture.png"),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "My Profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _profileDetailsWidget() {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: CommonData().details.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Text(
              CommonData().details[index],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
