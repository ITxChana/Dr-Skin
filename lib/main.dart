import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/sign-in-screen.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/app-start-screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main()  async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp();
	runApp(const MyApp());
}


class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Dr. Skin',
			debugShowCheckedModeBanner: false,
			scrollBehavior: MyCustomScrollBehavior(),
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: FirebaseAuth.instance.currentUser != null ? const SigninScreen()
					: const GoogleLoginScreen(),
		);
	}
}
