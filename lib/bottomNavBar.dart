import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zenta/homepage.dart';

import 'constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 65, left: 0),
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: tWhite,
            ),
            child: TextButton.icon(
              // <-- TextButton
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: tHome,
              label: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 65, left: 0),
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: tWhite,
            ),
            child: TextButton.icon(
              // <-- TextButton
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: tSong,
              label: const Text(
                'Music',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 65, left: 0),
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: tWhite,
            ),
            child: TextButton.icon(
              // <-- TextButton
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: tCalendar,
              label: const Text(
                'Set',
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 65, left: 0),
          child: Container(
            height: 50,
            width: 90,
            decoration: BoxDecoration(
              color: tWhite,
            ),
            child: TextButton.icon(
              // <-- TextButton
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: tMoon,
              label: const Text(
                'ZMode',
                style: TextStyle(
                  fontSize: 7,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
