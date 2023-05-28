import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BaselScreen extends StatefulWidget {
  const BaselScreen({Key? key}) : super(key: key);

  @override
  _BaselScreenState createState() => _BaselScreenState();
}

class _BaselScreenState extends State<BaselScreen> {
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
        // basalcellcarcinomaByJ (124:409)
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
                        width: 340*fem, // Increase the width to fit the entire text
                        height: 40*fem, // Increase the height to fit the entire text
                        child: Text(
                          'Basel Cell Carcinoma',
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
              // autogroupysdeJyN (4ZwWqHdL3m2h2XBsw7ySDE)
              padding: EdgeInsets.fromLTRB(140*fem, 64.63*fem, 139*fem, 101.17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // melanocyticnevi1DaY (124:415)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 84.9*fem),
                    width: 800*fem,
                    height: 587.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanocytic-nevi-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // basalcellcarcinomainC (124:410)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 598*fem, 69.92*fem),
                    child: Text(
                      'Basal cell carcinoma',
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 22*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2727272727*ffem/fem,
                        color: Color(0xff8b52ff),
                      ),
                    ),
                  ),
                  Container(
                    // overviewQuv (124:411)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 718*fem, 142.48*fem),
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
                  Container(
                    // thisisatypeofskincancerthattyp (124:413)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 141.5*fem),
                    constraints: BoxConstraints (
                      maxWidth: 782*fem,
                    ),
                    child: Text(
                      'This is a type of skin cancer that typically appears as a small, shiny bump or a pinkish patch of skin. It is slow-growing and rarely spreads to other parts of the body, but can cause disfigurement if left untreated. This is the most common type of skin cancer, accounting for about 80% of cases. It is usually slow-growing and rarely spreads to other parts of the body, but can be disfiguring if left untreated.. ',
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.75*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // treatmentconsultyourdoctorbefo (124:412)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 245*fem, 164.23*fem),
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
                  Container(
                    // mohssurgerythisisaprecisesurgi (124:414)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 140.04*fem),
                    constraints: BoxConstraints (
                      maxWidth: 801*fem,
                    ),
                    child: Text(
                      'Mohs surgery: This is a precise surgical technique in which the cancerous tissue is removed layer by layer until all of the cancer has been eliminated. It has a high cure rate and is often recommended for larger or more aggressive tumors.\n\nRadiation therapy: This involves using high-energy radiation to kill cancer cells. It can be done externally or internally, depending on the location and size of the tumor. It is often used for tumors that cannot be surgically removed or for patients who cannot undergo surgery.\n\nTopical chemotherapy: This involves applying a cream or lotion that contains drugs to kill cancer cells. It is often used for superficial basal cell carcinomas that have not spread beyond the surface of the skin.\n',
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.75*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // fabdarkfoE (124:416)
                    margin: EdgeInsets.fromLTRB(651.8*fem, 0*fem, 0*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 146.8*fem,
                        height: 147.53*fem,
                        child: Image.asset(
                          'assets/page-1/images/fab-dark.png',
                          width: 146.8*fem,
                          height: 147.53*fem,
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