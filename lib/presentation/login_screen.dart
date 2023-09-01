import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_assessment/constan/color.dart';
import 'package:technical_assessment/controller/auth_controller.dart';
import 'package:technical_assessment/helper/preference.dart';
import 'package:technical_assessment/presentation/home_screen.dart';
import 'package:technical_assessment/presentation/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = Get.find<AuthController>();
  bool isLoading = false;

  postLogin() async {
    setState(() {
      authController.gagalCallModel?.error = null;
      authController.suksesCallModel?.token = null;
      isLoading = true;
    });

    await authController.postLogin(
        authController.email.text, authController.password.text);

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Hai, ',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontFamily: "Gilory",
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Selamat Datang',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Silahkan login untuk melanjutkan",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: AppColors.darkBlue),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/ic_picture1.png",
              height: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.otherBlue,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowColor.withOpacity(0.16),
                        spreadRadius: 0,
                        blurRadius: 24,
                        offset:
                            const Offset(0, 16), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: authController.email,
                    decoration: InputDecoration(
                      focusColor: Colors.red,
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Masukkan email anda",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: AppColors.otherBlue,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lupa Password anda ?",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: AppColors.otherBlue,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadowColor.withOpacity(0.16),
                        spreadRadius: 0,
                        blurRadius: 24,
                        offset:
                            const Offset(0, 16), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: authController.password,
                    decoration: InputDecoration(
                      focusColor: Colors.red,
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Masukkan password anda",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/ic_see_password.png",
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                isLoading == true
                    ? const Center(child: CircularProgressIndicator())
                    : InkWell(
                        onTap: () async {
                          await postLogin();
                          if (authController.suksesCallModel?.token != null) {
                            await Prefence().setStatusLogin();
                            Get.dialog(
                              AlertDialog(
                                title: Text(
                                  "Sukses",
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                                content: Text(
                                  "Berhasil Login",
                                  style: GoogleFonts.poppins(fontSize: 18),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Get.to(const HomeScreen());
                                      setState(() {
                                        authController.email.clear();
                                        authController.password.clear();
                                      });
                                    },
                                  )
                                ],
                              ),
                            );
                          } else {
                            Get.dialog(
                              AlertDialog(
                                title: Text(
                                  "Warning",
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                                content: Text(
                                  authController.gagalCallModel!.error!,
                                  style: GoogleFonts.poppins(fontSize: 18),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Get.back();
                                    },
                                  )
                                ],
                              ),
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color:
                                    AppColors.shadowBlueColor.withOpacity(0.24),
                                spreadRadius: 0,
                                blurRadius: 24,
                                offset: const Offset(
                                    0, 16), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.otherBlue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(""),
                              Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                size: 24,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(ResgiterScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun ?",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: AppColors.shadowColor,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Daftar sekarang",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: AppColors.otherBlue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "\u00a9 SILK. all right reserved.",
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: AppColors.shadowColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
