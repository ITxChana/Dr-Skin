import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/model/user_details.dart';

class LoginController with ChangeNotifier{

  // object
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetails? userDetails;

  // function for google login

  googleLogin() async {
    this.googleSignInAccount = await _googleSignIn.signIn();

    //inserting values for the user details model

    this.userDetails = new UserDetails(
      displayName: this.googleSignInAccount!.displayName,
      email: this.googleSignInAccount!.email,
      photoURL: this.googleSignInAccount!.photoUrl,
    );

    // call
    notifyListeners();
  }

  //logout

  logout() async {
    this.googleSignInAccount = await _googleSignIn.signOut();

    userDetails = null;
    notifyListeners();
  }
}