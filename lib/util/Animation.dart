import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  late Random random;
  late Color circleColor;
  late double circleWidth, circleHeight;
  late double x, y, xSpeed, ySpeed, speed;

  void pickColor() {
    Timer(const Duration(milliseconds: 100), () {
      int r = random.nextInt(255);
      int g = random.nextInt(255);
      int b = random.nextInt(255);
      setState(() {
        circleColor = Color.fromRGBO(r, g, b, 1);
      });
    });
  }

  @override
  initState() {
    super.initState();
    random = Random();
    circleColor = Colors.white;
    circleWidth = 40;
    circleHeight = 40;
    x = 100;
    y = 10;
    xSpeed = 6;
    ySpeed = 2;
    speed = 20;
    update();
  }

  void update() {
    Timer.periodic(Duration(milliseconds: speed.toInt()), (timer) {
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;
      x += xSpeed;
      y += ySpeed;

      if (x + circleWidth >= screenWidth || x <= 0) {
        xSpeed = -xSpeed;
        x = x.clamp(0.0, screenWidth - circleWidth);
        pickColor();
      }

      if (y + circleHeight >= screenHeight || y <= 0) {
        ySpeed = -ySpeed;
        y = y.clamp(0.0, screenHeight - circleHeight);
        pickColor();
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            key: UniqueKey(),
            // Use UniqueKey to trigger widget recreation
            duration: Duration(milliseconds: speed.toInt()),
            left: x,
            top: y,
            child: Container(
              height: circleHeight + 100,
              width: circleWidth + 100,
              decoration: BoxDecoration(
                  // color: circleColor,
                  // shape: BoxShape.circle,
                  ),
              child: Text(
                "OrzuGrand",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: circleColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
