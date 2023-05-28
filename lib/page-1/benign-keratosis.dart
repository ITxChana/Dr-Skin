import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class KeratosisScreen extends StatefulWidget {
  const KeratosisScreen({Key? key}) : super(key: key);

  @override
  _KeratosisScreenState createState() => _KeratosisScreenState();
}

class _KeratosisScreenState extends State<KeratosisScreen> {
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
        // benignkeratosisXNQ (124:391)
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
                          'Benign Keratosis',
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
              // autogroupeexq89E (4ZwVXVUHpBBV6pyyqyeExQ)
              padding: EdgeInsets.fromLTRB(140*fem, 64.63*fem, 140*fem, 101.17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // melanocyticnevi1q3e (124:397)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 84.9*fem),
                    width: 800*fem,
                    height: 587.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanocytic-nevi-1-8PS.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // benignkeratosisXx4 (124:392)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 638*fem, 69.92*fem),
                    child: Text(
                      'Benign keratosis',
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
                    // overview2dv (124:393)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 717*fem, 142.48*fem),
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
                    // hesearenoncancerousgrowthsonth (124:395)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 141.5*fem),
                    constraints: BoxConstraints (
                      maxWidth: 799*fem,
                    ),
                    child: Text(
                      'hese are non-cancerous growths on the skin that can have various causes, such as sun damage or genetics. They can appear as rough or scaly patches, and are usually harmless. These growths are typically non-cancerous and can be caused by factors such as sun damage, aging, or genetics. They are common in older adults and often appear on areas of the body exposed to the sun.',
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
                    // treatmentconsultyourdoctorbefo (124:394)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 244*fem, 164.23*fem),
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
                    // cryotherapythisinvolvesusingli (124:396)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 140.04*fem),
                    constraints: BoxConstraints (
                      maxWidth: 799*fem,
                    ),
                    child: Text(
                      'Cryotherapy: This involves using liquid nitrogen to freeze the growth, which causes it to blister and eventually fall off. It is a quick and relatively painless treatment that can be done in a dermatologist\'s office.\n\nCurettage: This is a procedure in which a dermatologist uses a special instrument called a curette to scrape off the growth. It is often done after the area has been numbed with a local anesthetic.\n\nLaser therapy: This involves using a laser to remove the growth. It is a precise and targeted treatment that can be done in a dermatologist\'s office. However, it can be more expensive than other treatments and may require multiple sessions.\n\n',
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
                    // fabdarkYRE (124:398)
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
                          'assets/page-1/images/fab-dark-Ko6.png',
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