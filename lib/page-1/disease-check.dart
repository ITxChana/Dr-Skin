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
        // diseasecheckZNp (1:355)
        padding: EdgeInsets.fromLTRB(143*fem, 227*fem, 161*fem, 225*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff0faff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame1FWY (10:921)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 761*fem),
              width: 752*fem,
              height: 1104*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10*fem),
                child: Image.asset(
                  'assets/page-1/images/frame-1-4JU.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // autogroupeahw9rp (4ZwUKroeaYro5gjE56eahW)
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // smallfabdarkHi8 (10:922)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 80*fem,
                        height: 80*fem,
                        child: Image.asset(
                          'assets/page-1/images/small-fab-dark-hdJ.png',
                          width: 80*fem,
                          height: 80*fem,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 152*fem,
                  ),
                  Container(
                    // smallfabdarkMT6 (10:923)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                    width: 80*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/page-1/images/small-fab-dark-3Z2.png',
                      width: 80*fem,
                      height: 80*fem,
                    ),
                  ),
                  SizedBox(
                    width: 152*fem,
                  ),
                  Container(
                    // smallfabdark4sJ (10:924)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                    width: 80*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/page-1/images/small-fab-dark.png',
                      width: 80*fem,
                      height: 80*fem,
                    ),
                  ),
                  SizedBox(
                    width: 152*fem,
                  ),
                  Container(
                    // smallfabdarkn2c (10:925)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                    width: 80*fem,
                    height: 80*fem,
                    child: Image.asset(
                      'assets/page-1/images/small-fab-dark-tXA.png',
                      width: 80*fem,
                      height: 80*fem,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}