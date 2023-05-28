import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/check-screen.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
      width: double.infinity,
      child: Container(
        // vascularcr4 (41:364)
        padding: EdgeInsets.fromLTRB(0*fem, 73.44*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff0faff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // topappbardarkV7v (10:494)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 114.56*fem),
              padding: EdgeInsets.fromLTRB(8*fem, 12*fem, 140*fem, 12*fem),
              width: double.infinity,
              height: 160*fem,
              decoration: BoxDecoration (
                color: Color(0xfff0faff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupbhqayHz (DCL4rGDi7UrHRHrjFgbHqA)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(14*fem, 45.19*fem, 0*fem, 0*fem),
                    child: Align(
                      // vectorgTJ (104:378)
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 40*fem,
                        height: 39.17*fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const NavigationScreen()),
                            );
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/vector-DBv.png',
                            width: 40*fem,
                            height: 39.17*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouptde8Wx8 (DCL4wm4YqmTLaYFGBbTde8)
                    width: 806*fem,
                    height: 103.94*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle23hA (75:394)
                          left: 6*fem,
                          top: 25.6042480469*fem,
                          child: Align(
                            child: SizedBox(
                              width: 800*fem,
                              height: 78.33*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xfff0faff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // checkLAU (75:398)
                          left: 372.5*fem,
                          top: 45.1875*fem,
                          child: Align(
                            child: SizedBox(
                              width: 67*fem,
                              height: 28*fem,
                              child: Text(
                                'Check',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1666666667*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // fabdarkyjE (10:728)
              margin: EdgeInsets.fromLTRB(78*fem, 0*fem, 0*fem, 0*fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckScreen()),
                  );
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 398*fem,
                  height: 394.6*fem,
                  child: Image.asset(
                    'assets/page-1/images/fab-dark.png',
                    width: 398*fem,
                    height: 394.6*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )
      )
    );
  }
}