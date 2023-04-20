import 'package:flutter/material.dart';
import 'package:zenta/bottomNavbar.dart';
import 'package:zenta/carouselDots.dart';
import 'constant.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://th.bing.com/th/id/OIP.beRWaVOKy-KXFJFfGc1EmAHaHa?pid=ImgDet&w=553&h=553&rs=1',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: tWhite,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    35.19 * fem, 80 * fem, 18.35 * fem, 21 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient:
                      const LinearGradient(colors: [tgradbut1, tgradbut2]),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50 * fem),
                    bottomLeft: Radius.circular(50 * fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: const Text(
                          "Todays Quote!",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: tWhite,
                          ),
                        ),
                      ),
                    ),
                    CarouselDots(imgList: imgList),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 210),
                child: const Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: tBlack,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: tmainBlue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: tmainBlue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: tmainBlue,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: tmainBlue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: tmainBlue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: tmainBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
