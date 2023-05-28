import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/app-start-screen.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  _LogoutScreenState createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // logouthhr (124:334)
        padding: EdgeInsets.fromLTRB(140*fem, 1280.75*fem, 140*fem, 599.25*fem),
        width: double.infinity,
        height: 2350*fem,
        decoration: BoxDecoration (
          color: Color(0xcce8def8),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Container(
          // basicdialogdarkpGg (124:362)
          padding: EdgeInsets.fromLTRB(24*fem, 34*fem, 0*fem, 69*fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe8def8),
            borderRadius: BorderRadius.circular(28*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // titledescriptioni7A (I124:362;52112:32137)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 409*fem, 10*fem),
                width: 367*fem,
                height: 264*fem,
                child: Center(
                  // bodySJ4 (I124:362;52112:32139)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints (
                        maxWidth: 367*fem,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.25*ffem/fem,
                            letterSpacing: 0.25*fem,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: '.\n',
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.0833333333*ffem/fem,
                                letterSpacing: 0.25*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: '\n\nAre you sure you want to log out?\n',
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.0833333333*ffem/fem,
                                letterSpacing: 0.25*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: '\n\n\n\n\n\n\n\n',
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.25*ffem/fem,
                                letterSpacing: 0.25*fem,
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
                // actions5XN (I124:362;52112:32140)
                padding: EdgeInsets.fromLTRB(8*fem, 24*fem, 8*fem, 24*fem),
                width: 370*fem,
                height: 93*fem,
                child: Container(
                  // actions1A8 (I124:362;52112:32141)
                  width: 221*fem,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // buttondarkMDz (I124:362;52112:32142)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        child: TextButton(
                          onPressed: () async {
                            // Obtain the FirebaseAuth instance
                            final _auth = FirebaseAuth.instance;

                            // Get the current logged-in user
                            final user = _auth.currentUser;

                            // Make sure the user is logged in before navigating
                            if (user != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationScreen(),
                                ),
                              );
                            } else {
                              // Show a message or navigate to the login screen if the user is not logged in
                              print('User not logged in');
                            }
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 113*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Go back',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.0416666667*ffem/fem,
                                    letterSpacing: 0.1000000015*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        // buttondarkb8L (I124:362;52112:32143)
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const GoogleLoginScreen()),
                          );
                        },
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 100*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(100*fem),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Logout',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.0416666667*ffem/fem,
                                  letterSpacing: 0.1000000015*fem,
                                  color: Color(0xff000000),
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
            ],
          ),
        ),
      ),
          );
  }
}