import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MelanomaScreen extends StatefulWidget {
  const MelanomaScreen({Key? key}) : super(key: key);

  @override
  _MelanomaScreenState createState() => _MelanomaScreenState();
}

class _MelanomaScreenState extends State<MelanomaScreen> {
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
                          'Melanoma',
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
              // autogroupcheyWMW (4ZwSrekdH7VT7LhxfUCHeY)
              padding: EdgeInsets.fromLTRB(140*fem, 66.58*fem, 140*fem, 101.17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // melanoma1obW (64:584)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 83.92*fem),
                    width: 800*fem,
                    height: 587.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanoma-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // melanomaL5e (41:385)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 695*fem, 67.96*fem),
                    child: Text(
                      'Melanoma',
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
                    // overview3Vr (65:385)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 717*fem, 108.41*fem),
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
                    // melanomathemostserioustypeofsk (65:394)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 125.05*fem),
                    constraints: BoxConstraints (
                      maxWidth: 786*fem,
                    ),
                    child: Text(
                      'Melanoma, the most serious type of skin cancer, develops in the cells (melanocytes) that produce melanin - the pigment that gives your skin its color. Melanoma can also form in your eyes and, rarely, in internal organs, such as your intestines. The exact cause of all melanomas isn\'t clear, but exposure to ultraviolet (UV) radiation from sunlight or tanning lamps and beds increases your risk of developing melanoma. Limiting you exposure to UV radiation can help reduce your risk of melanoma.',
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
                    // treatmentconsultyourdoctorbefo (65:389)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 79.49*fem),
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
                    // ifmelanomahasspreadbeyondthesk (65:397)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 104.37*fem),
                    constraints: BoxConstraints (
                      maxWidth: 780*fem,
                    ),
                    child: Text(
                      'If melanoma has spread beyond the skin, treatment options may include:\n\nSurgery to remove affected lymph nodes: If melanoma has spread to nearby lymph nodes\nyour surgeon may remove the affected nodes.\n\nChemotherapy: Chemotherapy uses drugs to destroy cancer cells Chemotherapy can be given intravenously, in pill form or both SO that it travels throughout your body.\n\nRadiation therapy: This treatment uses high-powered energy beams, such as X-rays to kill cancer cells. It\'s sometimes used to help relieve symptoms of melanoma that has spread\nto another area of the body.\n\nBiological therapy: Biological therapy boosts your immune system to help your body fight\ncancer. Side effects of these treatments are similar to those of the flu, including chills, fatigue fever, headache and muscle aches.',
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
                    // fabdarkksS (108:357)
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
                          'assets/page-1/images/fab-dark-7rY.png',
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
    );
  }
}