import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/actinic.dart';
import 'package:myapp/page-1/basal-cell-carcinoma.dart';
import 'package:myapp/page-1/benign-keratosis.dart';
import 'package:myapp/page-1/dermatofibroma.dart';
import 'package:myapp/page-1/melanocytic.dart';
import 'package:myapp/page-1/melanoma.dart';
import 'package:myapp/page-1/navigation-screen.dart';
import 'package:myapp/page-1/vascular.dart';
import 'package:myapp/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
        // skindisesedetailspa4 (1:358)
        padding: EdgeInsets.fromLTRB(0*fem, 86*fem, 0*fem, 0*fem),
    width: double.infinity,
      child: Container(
        // skindisesedetailssFn (1:358)
        padding: EdgeInsets.fromLTRB(0*fem, 86*fem, 0*fem, 0*fem),
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
                          'Skin Disease',
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
                                    builder: (context) => const NavigationScreen(),
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
              // autogroups8reeLQ (4ZwNaGtV4iuopDt3kvS8Re)
              padding: EdgeInsets.fromLTRB(124*fem, 176.25*fem, 97*fem, 164.47*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupzgtzXf6 (4ZwMNotEQ1pUyuWwq8ZGTz)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 60.6*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // melanocyticnevi2rhN (64:589)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139*fem, 0*fem),
                          width: 360*fem,
                          height: 345.65*fem,
                          child: Image.asset(
                            'assets/page-1/images/melanocytic-nevi-2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // vascularlesions1Nfi (124:333)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.65*fem, 0*fem, 0*fem),
                          width: 360*fem,
                          height: 346*fem,
                          child: Image.asset(
                            'assets/page-1/images/vascular-lesions-1-H9z.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupzjsn6bi (4ZwMaoYFG6QnRMdvmUzjsN)
                    margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 78*fem, 276.13*fem),
                    width: double.infinity,
                    height: 62.67*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // buttonpXi (14:1036)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 241*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MelanocyticScreen()),
                              );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 240*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffd0bcff),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Melanocytic Nevi',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.4285714286*ffem/fem,
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
                          // buttonqxc (14:1045)
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const VacularScreen()),
                            );
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 240*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffd0bcff),
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Vascular lesions',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4285714286*ffem/fem,
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
                  Container(
                    // autogroupvpwviWc (4ZwMpJ9mES5NYEmnKdVPwv)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 65.6*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // melanoma2ShW (64:593)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 121*fem, 0*fem),
                          width: 360*fem,
                          height: 345.65*fem,
                          child: Image.asset(
                            'assets/page-1/images/melanoma-2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // actinickeratoses1yBe (65:372)
                          width: 360*fem,
                          height: 345.65*fem,
                          child: Image.asset(
                            'assets/page-1/images/actinic-keratoses-1-8dv.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupj88puqz (4ZwMw8HiW4XMC6HY2FJ88p)
                    margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 78*fem, 257.13*fem),
                    width: double.infinity,
                    height: 62.67*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // button2fi (14:1039)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 241*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MelanomaScreen()),
                              );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 240*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffd0bcff),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Melanoma',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.4285714286*ffem/fem,
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
                          // buttonsRS (14:1042)
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ActinicScreen()),
                            );
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 240*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffd0bcff),
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Actinic keratoses',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4285714286*ffem/fem,
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
                  Container(
                    // autogroupcnja9dr (4ZwN9nbHdp37Nqy8LxCnjA)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 60.6*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // melanocyticnevi3gtg (124:379)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139*fem, 0*fem),
                          width: 360*fem,
                          height: 345.65*fem,
                          child: Image.asset(
                            'assets/page-1/images/melanocytic-nevi-3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // vascularlesions2pV6 (124:380)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.65*fem, 0*fem, 0*fem),
                          width: 360*fem,
                          height: 346*fem,
                          child: Image.asset(
                            'assets/page-1/images/vascular-lesions-2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupvjxqkNk (4ZwNHCYbtensBb6fWNvJxQ)
                    margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 78*fem, 276.13*fem),
                    width: double.infinity,
                    height: 62.67*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // buttongXJ (124:375)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 241*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const KeratosisScreen()),
                              );
                            },
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 240*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffd0bcff),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Benign keratosis',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.4285714286*ffem/fem,
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
                          // button8u6 (124:378)
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BaselScreen()),
                            );
                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 240*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffd0bcff),
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Basal cell carcinoma',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4285714286*ffem/fem,
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
                  Container(
                    // melanoma3zAc (124:381)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 499*fem, 65.31*fem),
                    width: 360*fem,
                    height: 345.65*fem,
                    child: Image.asset(
                      'assets/page-1/images/melanoma-3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // buttonv4G (124:376)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 499*fem, 44.33*fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DermatofibromaScreen()),
                        );
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 240*fem,
                        height: 62.67*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffd0bcff),
                          borderRadius: BorderRadius.circular(100*fem),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Dermatofibroma',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286*ffem/fem,
                                letterSpacing: 0.1000000015*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // fabdarkZN8 (13:1032)
                    margin: EdgeInsets.fromLTRB(703.8*fem, 0*fem, 0*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 146.8*fem,
                        height: 147.53*fem,
                        child: Image.asset(
                          'assets/page-1/images/fab-dark-neU.png',
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