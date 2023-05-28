import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DermatofibromaScreen extends StatefulWidget {
  const DermatofibromaScreen({Key? key}) : super(key: key);

  @override
  _DermatofibromaScreenState createState() => _DermatofibromaScreenState();
}

class _DermatofibromaScreenState extends State<DermatofibromaScreen> {
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
        // dermatofibromaVma (124:427)
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
                          'Dermatofibroma',
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
                              'assets/page-1/images/vector-1Hi.png',
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
              // autogroupxc7r2S4 (4ZwXskta4ugHnFTkA9XC7r)
              padding: EdgeInsets.fromLTRB(140*fem, 64.63*fem, 139*fem, 101.17*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // melanocyticnevi1KRA (124:433)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 84.9*fem),
                    width: 800*fem,
                    height: 587.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanocytic-nevi-1-XsW.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // dermatofibromaSEt (124:428)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 641*fem, 69.92*fem),
                    child: Text(
                      'Dermatofibroma',
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
                    // overview9uz (124:429)
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
                    // thisisanoncancerousskingrowtht (124:431)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 141.5*fem),
                    constraints: BoxConstraints (
                      maxWidth: 801*fem,
                    ),
                    child: Text(
                      'This is a non-cancerous skin growth that usually appears as a firm, raised bump on the lower legs, though it can occur on other areas of the body. It is generally harmless and doesn\'t require treatment unless it becomes bothersome or cosmetically undesirable. This non-cancerous skin growth is usually harmless and may be caused by an insect bite or injury to the skin. It is more common in women and often appears on the legs.. ',
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
                    // treatmentconsultyourdoctorbefo (124:430)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 245*fem, 150.23*fem),
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
                    // observationifthedermatofibroma (124:432)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 126.04*fem),
                    constraints: BoxConstraints (
                      maxWidth: 799*fem,
                    ),
                    child: Text(
                      'Observation: If the dermatofibroma is small and not causing any problems, it may not require treatment. The dermatologist may simply monitor it for any changes.\n\nCryotherapy: This involves using liquid nitrogen to freeze the growth, which causes it to blister and eventually fall off. It is a quick and relatively painless treatment that can be done in a dermatologist\'s office.\n\nCurettage: This is a procedure in which a dermatologist uses a special instrument called a curette to scrape off the growth. It is often done after the area has been numbed with a local anesthetic.\n\nSurgical excision: This involves cutting out the growth and some surrounding tissue. It is often used for larger dermatofibromas or for those that are causing symptoms such as itching or pain.\n',
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
                    // fabdarkgD6 (124:434)
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
                          'assets/page-1/images/fab-dark-J6t.png',
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