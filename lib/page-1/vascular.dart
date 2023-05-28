import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VacularScreen extends StatefulWidget {
  const VacularScreen({Key? key}) : super(key: key);

  @override
  _VacularScreenState createState() => _VacularScreenState();
}

class _VacularScreenState extends State<VacularScreen> {
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
      child: Container(
        // vascular1AQ (41:364)
        padding: EdgeInsets.fromLTRB(0*fem, 73.44*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff0faff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // topappbardark6Hn (10:494)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 178.56*fem), // Added 25 pixels to the top margin
              width: double.infinity,
              height: 160*fem,
              decoration: BoxDecoration (
                color: Color(0xfff0faff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle2zPA (75:394)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 940*fem,
                        height: 130*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xfff0faff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // check5vQ (75:398)
                    left: 416.5*fem,
                    top: 64*fem,
                    child: Align(
                      child: SizedBox(
                        width: 240*fem, // Increase the width to fit the entire text
                        height: 40*fem, // Increase the height to fit the entire text
                        child: Text(
                          'Vascular Lesions',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 38*ffem, // Increase the font size
                            fontWeight: FontWeight.w600, // Change fontWeight to semi-bold (w600)
                            height: 1.1666666667*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectora6U (104:378)
                      left: 16*fem,
                      top: 60*fem,
                      child: Align(
                        child: SizedBox(
                          width: 48*fem,
                          height: 47.17*fem,
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
                            child: Image.asset(
                              'assets/page-1/images/vector-FLL.png',
                              width: 48*fem,
                              height: 47.17*fem,
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              // autogrouphqhzxFz (4ZwTaiNsarBBjq5DsFHqhz)
              width: double.infinity,
              height: 2119.9*fem,
              child: Stack(
                children: [
                  Positioned(
                    // vascularlesions55i (41:368)
                    left: 137*fem,
                    top: 746.8127441406*fem,
                    child: Align(
                      child: SizedBox(
                        width: 163*fem,
                        height: 28*fem,
                        child: Text(
                          'Vascular lesions',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 22*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2727272727*ffem/fem,
                            color: Color(0xff8b52ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vascularlesions1YV6 (64:588)
                    left: 140*fem,
                    top: 75.3959960938*fem,
                    child: Align(
                      child: SizedBox(
                        width: 800*fem,
                        height: 587.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/vascular-lesions-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // overview2v4 (65:384)
                    left: 140*fem,
                    top: 837.8752441406*fem,
                    child: Align(
                      child: SizedBox(
                        width: 83*fem,
                        height: 28*fem,
                        child: Text(
                          'Overview',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4*ffem/fem,
                            color: Color(0xff8b52ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // treatmentconsultyourdoctorbefo (65:390)
                    left: 140*fem,
                    top: 1255.0002441406*fem,
                    child: Align(
                      child: SizedBox(
                        width: 556*fem,
                        height: 28*fem,
                        child: Text(
                          'Treatment(Consult your doctor before taking any  medication)',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4*ffem/fem,
                            color: Color(0xff8b52ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vascularlesionsareagroupofskin (65:398)
                    left: 137*fem,
                    top: 992.1042480469*fem,
                    child: Align(
                      child: SizedBox(
                        width: 800*fem,
                        height: 168*fem,
                        child: Text(
                          'Vascular lesions are a group of skin conditions that involve abnormalities in blood vessels. These abnormalities can lead to the development of various types of lesions, such as hemangiomas, port-wine stains, spider veins, and telangiectasias. Hemangiomas are benign growths made up of blood vessels that can appear anywhere on the body, while port-wine stains are flat, reddish-purple birthmarks that usually appear on the face, neck, or upper body. Spider veins and telangiectasias, on the other hand, are small, dilated blood vessels that can be visible on the surface of the skin. ',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.75*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // treatmentforvascularlesionsdep (65:396)
                    left: 140*fem,
                    top: 1399.3547363281*fem,
                    child: Align(
                      child: SizedBox(
                        width: 784*fem,
                        height: 364*fem,
                        child: Text(
                          'Treatment for vascular lesions depends on the type, size, and location of the lesion. Some common treatments include:\n\nLaser therapy: This is a non-invasive treatment that uses a laser to target and destroy the blood vessels that make up the lesion.\n\nSclerotherapy: This is a minimally invasive treatment that involves injecting a solution into the blood vessels to make them collapse and disappear.\n\nSurgery: In some cases, surgery may be necessary to remove larger vascular lesions.\n\nTopical medications: Some topical medications may be effective in treating certain types of vascular lesions, such as hemangiomas.',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.75*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // fabdark5BW (108:361)
                    left: 793*fem,
                    top: 1871.1879882812*fem,
                    child: Align(
                      child: SizedBox(
                        width: 146.8*fem,
                        height: 147.53*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/fab-dark-WKr.png',
                            width: 146.8*fem,
                            height: 147.53*fem,
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
        )
    )
        )
    );
  }
}