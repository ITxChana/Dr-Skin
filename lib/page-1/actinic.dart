import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ActinicScreen extends StatefulWidget {
  const ActinicScreen({Key? key}) : super(key: key);

  @override
  _ActinicScreenState createState() => _ActinicScreenState();
}

class _ActinicScreenState extends State<ActinicScreen> {
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
        // actinicj7v (41:398)
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
                          'Actinic Keratoses',
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
              // autogroupdfr8kUG (4ZwRuqzcZAgGhgiHDSdfr8)
              width: double.infinity,
              height: 2119.9*fem,
              child: Stack(
                children: [
                  Positioned(
                    // actinickeratosesUv4 (41:402)
                    left: 140*fem,
                    top: 755.6252441406*fem,
                    child: Align(
                      child: SizedBox(
                        width: 172*fem,
                        height: 28*fem,
                        child: Text(
                          'Actinic keratoses',
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
                    // actinickeratoses1NEk (64:586)
                    left: 140*fem,
                    top: 66.5834960938*fem,
                    child: Align(
                      child: SizedBox(
                        width: 800*fem,
                        height: 587.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/actinic-keratoses-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // overviewfje (65:386)
                    left: 140*fem,
                    top: 839.8332519531*fem,
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
                    // treatmentconsultyourdoctorbefo (65:388)
                    left: 140*fem,
                    top: 1233.4582519531*fem,
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
                    // actinickeratosisisaroughscalyp (65:393)
                    left: 148*fem,
                    top: 1002.7707519531*fem,
                    child: Align(
                      child: SizedBox(
                        width: 788*fem,
                        height: 84*fem,
                        child: Text(
                          'Actinic keratosis is a rough, scaly patch on your skin develops by years of exposure to the sun. It commonly occur on your face, lips, ears, back of your hands, forearms, scalp or neck. These patches take years to develop, usually first appearing in people over 40.',
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
                    // anactinickeratosissometimesdis (65:395)
                    left: 140*fem,
                    top: 1397.9794921875*fem,
                    child: Align(
                      child: SizedBox(
                        width: 793*fem,
                        height: 308*fem,
                        child: Text(
                          'An actinic keratosis sometimes disappears on ts own, but it typically returns after more sun exposure. Because it\'s impossible to tell which patches or lesions will develop into skin cancer, actinic keratoses are usually removed as a precaution.\n\nMedications: If you have several actinic keratoses, you may be better served by treating the entire affected area. These creams may cause redness, scaling or a burning sensation for a few weeks.\n\nSurgical and other procedures: Freezing (cryotherapy) in which Actinic keratoses can be\nremoved by freezing them with liquid nitrogen Scraping (curettage) in which scraping may be followed by electrosurgery, in which the doctor uses a pencil-shaped instrument to cut and destroy the affected tissue with an electric current.',
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
                    // fabdarkPUc (108:353)
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
                            'assets/page-1/images/fab-dark-SuW.png',
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