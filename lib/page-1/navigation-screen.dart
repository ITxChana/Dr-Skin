import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/app-start-screen.dart';
import 'package:myapp/page-1/check-screen.dart';
import 'package:myapp/page-1/home-screen.dart';
import 'package:myapp/page-1/log-out.dart';
import 'package:myapp/page-1/skin-disese-details.dart';
import 'package:myapp/service/firebase_auth_service.dart';
import 'package:myapp/utils.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 142 * fem, 0 * fem, 19 * fem),
          width: double.infinity,
          height: 2350 * fem,
          decoration: BoxDecoration(
            color: Color(0xb2d0bcff),
            borderRadius: BorderRadius.circular(18 * fem),
          ),
          child: Container(
            width: 750 * fem,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffd0bcff),
              borderRadius: BorderRadius.circular(18 * fem),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 64 * fem,
                  top: 54 * fem,
                  child: Container(
                    width: 120 * fem,
                    height: 120 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff1c1b1f),
                      borderRadius: BorderRadius.circular(100 * fem),
                    ),
                    child: Center(
                      child: CircleAvatar(),
                    ),
                  ),
                ),
                Positioned(
                  left: 64 * fem,
                  top: 235 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 117 * fem,
                      height: 24 * fem,
                      child: Text(
                        'User name',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1 * ffem / fem,
                          letterSpacing: 0.150000006 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 64 * fem,
                  top: 292 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 192 * fem,
                      height: 24 * fem,
                      child: Text(
                        'example@gmail.com',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.150000006 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // dividerCd6 (10:822)
                  left: 0*fem,
                  top: 358*fem,
                  child: Align(
                    child: SizedBox(
                      width: 600*fem,
                      height: 1*fem,
                      child: Container(
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonvZ6 (143:336)
                  left: 11*fem,
                  top: 470*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(23*fem, 18*fem, 23*fem, 12.31*fem),
                      width: 589*fem,
                      height: 75*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffd0bcff),
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Align(
                        // dr1YqN (143:339)
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 270*fem,
                          height: 44.69*fem,
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
                            child: Image.asset(
                              'assets/page-1/images/dr-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // button31S (143:340)
                  left: 11*fem,
                  top: 1777*fem,
                  child: TextButton(
                    onPressed: () async {
                      await FirebaseServices().googleSignOut();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GoogleLoginScreen()),
                      );
                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24*fem, 5*fem, 24*fem, 4*fem),
                      width: 589*fem,
                      height: 75*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffd0bcff),
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Align(
                        // dr5G96 (143:355)
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 393*fem,
                          height: 66*fem,
                          child: Image.asset(
                            'assets/page-1/images/dr-5.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonAkG (143:343)
                  left: 11*fem,
                  top: 938*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24*fem, 18*fem, 24*fem, 11.47*fem),
                    width: 589*fem,
                    height: 75*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd0bcff),
                      borderRadius: BorderRadius.circular(100*fem),
                    ),
                    child: Align(
                      // dr4DiY (143:354)
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 270*fem,
                        height: 45.53*fem,
                        child: Image.asset(
                          'assets/page-1/images/dr-4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonKWg (143:346)
                  left: 11*fem,
                  top: 782*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(23*fem, 15*fem, 23*fem, 14.47*fem),
                    width: 589*fem,
                    height: 75*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffd0bcff),
                      borderRadius: BorderRadius.circular(100*fem),
                    ),
                    child: Align(
                      // dr3y5S (143:353)
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 270*fem,
                        height: 45.53*fem,
                        child: Image.asset(
                          'assets/page-1/images/dr-3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttontiC (143:349)
                  left: 11*fem,
                  top: 626*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(23*fem, 18*fem, 23*fem, 11.47*fem),
                      width: 589*fem,
                      height: 75*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffd0bcff),
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Align(
                        // dr2mGC (143:352)
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 270*fem,
                          height: 45.53*fem,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DetailsScreen()),
                              );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/dr-2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
          );
  }
}