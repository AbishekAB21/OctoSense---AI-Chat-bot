import 'package:ai_chat_bot/screens/home.dart';
import 'package:ai_chat_bot/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    goHome(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/octopus_logo.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "OctoSense",
            style: FontStyles.boldTextStyle(),
          )
        ],
      ),
    );
  }
}

void goHome(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));

  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
}
