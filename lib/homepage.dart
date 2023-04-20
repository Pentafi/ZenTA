import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zenta/carouselDots.dart';
import 'constant.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://th.bing.com/th/id/OIP.beRWaVOKy-KXFJFfGc1EmAHaHa?pid=ImgDet&w=553&h=553&rs=1',
  'https://th.bing.com/th/id/R.1a994928afa7866db6782dae8060708f?rik=CmK1xi3XIR64EQ&riu=http%3a%2f%2fhdfreewallpaper.net%2fwp-content%2fuploads%2f2015%2f09%2fmotivation-motivational-quotes-poster-wallpaper-free-hd-for-desktop.jpg&ehk=y4xS0fJstKQXAc8yWtX2LuYVSIj5UZsxyiYMM64%2boVM%3d&risl=&pid=ImgRaw&r=0',
  'https://i.pinimg.com/736x/c5/a6/17/c5a61784338e76777ae6817a51fc033e.jpg',
  'https://motivationparlour.files.wordpress.com/2019/03/dont-give-up.jpg?w=685?w=300',
  'https://i.pinimg.com/originals/69/59/c0/6959c0b257b813d2c1c7062983d834d8.jpg',
  'https://i.pinimg.com/originals/4b/17/08/4b1708d55ff11142d1f1127aab572515.jpg'
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

    return Scaffold(
      bottomNavigationBar: GNav(
        activeColor: tWhite,
        tabBackgroundGradient:
            const LinearGradient(colors: [tgradbut11, tgradbut22]),
        padding: EdgeInsets.all(16),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.music_note,
            text: 'Music',
          ),
          GButton(
            icon: Icons.calendar_month,
            text: 'Meditate',
          ),
          GButton(
            icon: Icons.night_shelter,
            text: 'Zen',
          ),
        ],
      ),
      body: SizedBox(
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
                    35.19 * fem, 50 * fem, 18.35 * fem, 21 * fem),
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
                          "Todays Quote",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: tWhite,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(10.0, 10.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(25, 100, 100, 100),
                              ),
                              Shadow(
                                offset: Offset(10.0, 10.0),
                                blurRadius: 8.0,
                                color: Color.fromARGB(50, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CarouselDots(imgList: imgList),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 210),
                child: const Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: tBlack,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(25, 100, 100, 100),
                      ),
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 20.0,
                        color: Color.fromARGB(100, 10, 50, 10),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
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
                    ),
                    Container(
                      child: Padding(
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
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Container(
                          height: 40,
                          width: 320,
                          color: tBlack,
                          child: new Image.asset(
                            'assets/quotes/3.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left: 5, top: 20),
                    //     child: Container(
                    //       height: 100,
                    //       width: 320,
                    //       color: tBlack,
                    //       child: new Image.asset(
                    //         'assets/quotes/3.png',
                    //         fit: BoxFit.fill,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
