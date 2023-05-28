import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // resultaHN (1:356)
        padding: EdgeInsets.fromLTRB(140*fem, 150*fem, 140*fem, 666*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff0faff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame1U7r (10:963)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 240.6*fem),
              width: 800*fem,
              height: 1223.4*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10*fem),
                child: Image.asset(
                  'assets/page-1/images/frame-1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // buttonZQC (10:998)
              margin: EdgeInsets.fromLTRB(100*fem, 0*fem, 100*fem, 0*fem),
              width: double.infinity,
              height: 120*fem,
              decoration: BoxDecoration (
                color: Color(0xff8b52ff),
                borderRadius: BorderRadius.circular(100*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Skin disease name',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Roboto',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3333333333*ffem/fem,
                      letterSpacing: 0.1000000015*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}