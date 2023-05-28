import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MelanocyticScreen extends StatefulWidget {
  const MelanocyticScreen({Key? key}) : super(key: key);

  @override
  _MelanocyticScreenState createState() => _MelanocyticScreenState();
}

class _MelanocyticScreenState extends State<MelanocyticScreen> {
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
        // melanocyticcNC (1:359)
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
                          'Melanocytic Nevi',
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
              // autogroupqtteSfz (4ZwQxhuphPQMvNwJ5EqTTE)
              padding: EdgeInsets.fromLTRB(140*fem, 64.63*fem, 140*fem, 101.17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // melanocyticnevi1XxL (64:587)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 84.9*fem),
                    width: 800*fem,
                    height: 587.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanocytic-nevi-1-UzU.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // melanocyticnevie1N (14:1049)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 629*fem, 69.92*fem),
                    child: Text(
                      'Melanocytic Nevi',
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 22*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2727272727*ffem/fem,
                        color: Color(0xff8b52ff),
                      ),
                    ),
                  ),
                  Container(
                    // overviewwmA (65:383)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 717*fem, 114.48*fem),
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
                    // melanocyticnevialsoknownasmole (65:391)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 113.5*fem),
                    constraints: BoxConstraints (
                      maxWidth: 798*fem,
                    ),
                    child: Text(
                      'Melanocytic nevi, also known as moles, are a common type of skin lesion that develop when melanocytes, the pigment-producing cells in the skin, grow in clusters. These growths can appear anywhere on the body and range in color from flesh-toned to dark brown or black. While most melanocytic nevi are benign and pose no health risk, some can develop into melanoma, a potentially deadly form of skin cancer.\n\nThere are several types of melanocytic nevi, including common nevi, dysplastic nevi, and congenital nevi. ',
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
                    // treatmentconsultyourdoctorbefo (65:387)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 108.23*fem),
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
                    // treatmentsformelanocyticnevide (65:392)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 84.04*fem),
                    constraints: BoxConstraints (
                      maxWidth: 798*fem,
                    ),
                    child: Text(
                      'Treatments for melanocytic nevi depend on their appearance and whether they show any signs of becoming cancerous. \n\nObservation and monitoring: If the mole is benign and not causing any symptoms, it may simply be observed and monitored for any changes in appearance or symptoms.\n\nExcisional biopsy: This involves cutting out the entire mole and a small amount of the surrounding skin. This is often done when the mole is suspicious or when it needs to be removed for cosmetic reasons.\n\nShave removal: This procedure involves using a scalpel or razor to shave the mole off at the skin\'s surface. This may be a good option for moles that are raised or protrude above the skin\'s surface.\n\nLaser therapy: This involves using a laser to destroy the mole\'s pigment-producing cells. This may be a good option for small and flat moles.\n',
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
                    // fabdark9w6 (108:345)
                    margin: EdgeInsets.fromLTRB(652.8*fem, 0*fem, 0*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 146.8*fem,
                        height: 147.53*fem,
                        child: Image.asset(
                          'assets/page-1/images/fab-dark-bYt.png',
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