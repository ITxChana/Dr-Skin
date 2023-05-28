import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/page-1/sign-in-screen.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/controllers/login_controller.dart';
import 'package:provider/provider.dart';

class GoogleLoginScreen extends StatefulWidget {
  const GoogleLoginScreen({Key? key}) : super(key: key);

  @override
  _GoogleLoginScreenState createState() => _GoogleLoginScreenState();
}

class _GoogleLoginScreenState extends State<GoogleLoginScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return ChangeNotifierProvider(
      create: (context) => LoginController(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.fromLTRB(315 * fem, 363.52 * fem, 225 * fem, 402 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff0faff),
                borderRadius: BorderRadius.circular(18 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 64 * fem, 514.33 * fem),
                    width: 434 * fem,
                    height: 419.81 * fem,
                    child: Image.asset(
                      'assets/page-1/images/dr-skin-logo-1.png',
                      width: 434 * fem,
                      height: 419.81 * fem,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 90 * fem, 452.33 * fem),
                      child: Text(
                        'Dr. Skin',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 64 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.0625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      _handleSignInButtonPress();
                      return;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(6 * fem, 5 * fem, 6 * fem, 5 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff0faff),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 528 * fem,
                          height: 120 * fem,
                          child: Image.asset(
                            'assets/page-1/images/output-onlinepngtools-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _handleSignInButtonPress() async {
    final UserCredential? userCredential = await signInWithGoogle();
    if (userCredential != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        ),
      );
    } else {
      log('MK: user is not logged in with google:');
      // Sign in failed.
    }
  }
}
Future<UserCredential?> signInWithGoogle() async {
  try {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    // Trigger the Google Sign-In flow.
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser != null) {
      // Obtain the authentication details from the Google user.
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      // Create a new credential using the access token.
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential.
      final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);

      return userCredential;
    }
  } catch (e) {
    print('Error signing in with Google: $e');
  }

  return null;
}
