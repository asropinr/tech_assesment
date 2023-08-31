import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_assessment/constan/color.dart';
import 'package:technical_assessment/presentation/home_screen.dart';

class ResgiterScreen extends StatefulWidget {
  const ResgiterScreen({super.key});

  @override
  State<ResgiterScreen> createState() => _ResgiterScreenState();
}

class _ResgiterScreenState extends State<ResgiterScreen> {
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
                  "Silahkan Registrasi untuk melanjutkan",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Depan",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: AppColors.otherBlue,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 160,
                            height: 40,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      AppColors.shadowColor.withOpacity(0.16),
                                  spreadRadius: 0,
                                  blurRadius: 24,
                                  offset: const Offset(
                                      0, 16), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                focusColor: Colors.red,
                                disabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: "Nama Depan",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Belakang",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: AppColors.otherBlue,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 160,
                            height: 40,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      AppColors.shadowColor.withOpacity(0.16),
                                  spreadRadius: 0,
                                  blurRadius: 24,
                                  offset: const Offset(
                                      0, 16), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                focusColor: Colors.red,
                                disabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: "Nama Belakang",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "No. KTP",
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
                    decoration: InputDecoration(
                      focusColor: Colors.red,
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Masukkan No. KTP anda",
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
                Text(
                  "No. Telepon",
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
                    decoration: InputDecoration(
                      focusColor: Colors.red,
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Masukkan no telepon anda",
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
                Text(
                  "Password",
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
                Text(
                  "Konfirmasi Password",
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
                InkWell(
                  onTap: () {
                    Get.to(HomeScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.shadowBlueColor.withOpacity(0.24),
                          spreadRadius: 0,
                          blurRadius: 24,
                          offset:
                              const Offset(0, 16), // changes position of shadow
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
                          "Register",
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
              Get.back();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sudah punya akun ?",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: AppColors.shadowColor,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Login sekarang",
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
