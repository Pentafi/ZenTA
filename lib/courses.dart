import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'carouselDots.dart';
import 'constant.dart';
import 'homepage.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Container(
              height: 100,
              width: 320,
              color: tBlack,
              child: new Image.asset(
                'assets/quotes/qoute1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Container(
              height: 100,
              width: 320,
              color: tBlack,
              child: new Image.asset(
                'assets/quotes/2.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Container(
              height: 100,
              width: 320,
              color: tBlack,
              child: new Image.asset(
                'assets/quotes/3.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Container(
              height: 100,
              width: 320,
              color: tBlack,
              child: new Image.asset(
                'assets/quotes/3.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
