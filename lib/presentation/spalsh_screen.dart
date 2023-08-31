import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_assessment/constan/color.dart';
import 'package:technical_assessment/controller/auth_controller.dart';
import 'package:technical_assessment/presentation/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AuthController authController = Get.put(AuthController());
  startSplashScreen() async {
    // await authController.getToken();
    // var status = await Prefence().getStatusLogin();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
            // if (status == true) {
            //   return const BottomNavBarScreen();
            // } else {
            //   return const LoginScreen();
            // }
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: AppColors.otherBlue,
          child: Text(
            "Your Logo",
            style: GoogleFonts.poppins(
              fontSize: 26,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
