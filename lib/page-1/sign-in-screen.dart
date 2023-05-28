import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/app-start-screen.dart';
import 'package:myapp/page-1/home-screen.dart';
import 'package:myapp/utils.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
        // signinscreenRj6 (1:354)
        padding:
            EdgeInsets.fromLTRB(40 * fem, 146.88 * fem, 40 * fem, 599.25 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff0faff),
          borderRadius: BorderRadius.circular(18 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // mainimage18dW (7:75)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 428.88 * fem),
              width: 1000 * fem,
              height: 705 * fem,
              child: Image.asset(
                'assets/page-1/images/main-image-1.png',
                width: 1000 * fem,
                height: 705 * fem,
              ),
            ),
            Container(
              // basicdialogdarknrU (10:319)
              margin:
                  EdgeInsets.fromLTRB(100 * fem, 0 * fem, 100 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 34 * fem, 0 * fem, 69 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffe8def8),
                borderRadius: BorderRadius.circular(28 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // titledescription4oz (I10:319;52112:32137)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 52 * fem, 10 * fem),
                    width: 724 * fem,
                    height: 264 * fem,
                    child: Center(
                      // bodyBtc (I10:319;52112:32139)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 724 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.25 * ffem / fem,
                                letterSpacing: 0.25 * fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Dr. Skin is a skin disease detecting application. At the moment just produce limited disease detection.\n\n',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.0833333333 * ffem / fem,
                                    letterSpacing: 0.25 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'If you have rapidly changing symptoms please seek medical care.\n',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0833333333 * ffem / fem,
                                    letterSpacing: 0.25 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '\n\n\n\n\n\n\n\n',
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.25 * ffem / fem,
                                    letterSpacing: 0.25 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // actionsrQQ (I10:319;52112:32140)
                    padding: EdgeInsets.fromLTRB(
                        8 * fem, 24 * fem, 8 * fem, 24 * fem),
                    width: 370 * fem,
                    height: 93 * fem,
                    child: Container(
                      // actionsnJ4 (I10:319;52112:32141)
                      width: 240 * fem,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // buttondark8cp (I10:319;52112:32142)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 8 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                if (FirebaseAuth.instance.currentUser != null) {
                                  FirebaseAuth.instance.signOut();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'You are logged out of the app')));
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GoogleLoginScreen()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Center(
                                child: Text(
                                  'Go back',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Roboto',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.0416666667 * ffem / fem,
                                    letterSpacing: 0.1000000015 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              // buttondarkB5J (I10:319;52112:32143)
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeScreen()),
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Get start',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.0416666667 * ffem / fem,
                                  letterSpacing: 0.1000000015 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
