import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_assessment/constan/color.dart';
import 'package:technical_assessment/presentation/login_screen.dart';

import 'package:technical_assessment/presentation/profile_saya_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawer = false;

  List label = [
    "All Product",
    "Layanan Kesehatan",
    "Alat Kesehatan",
  ];

  int selectLabel = 0;
  int selectLayanan = 0;

  List cardLayanan = [
    {
      "nama": "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
      "price": 1400000,
      "lokasi": "Lenmarc Surabaya",
      "alamat": "Dukuh Pakis, Surabaya",
    },
    {
      "nama": "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
      "price": 1400000,
      "lokasi": "Lenmarc Surabaya",
      "alamat": "Dukuh Pakis, Surabaya",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top,
            ),
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isDrawer = true;
                            });
                          },
                          child: Image.asset(
                            "assets/ic_sidebar.png",
                            height: 28,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/ic_keranjang.png",
                              height: 22,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Image.asset(
                              "assets/ic_notif.png",
                              height: 22,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/bg_color_card.png")),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        AppColors.otherBlue.withOpacity(0.24),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: const Offset(
                                        0, 16), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Solusi, ',
                                      style: GoogleFonts.poppins(
                                        color: AppColors.blue,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Kesehatan Anda',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      "Update informasi seputar kesehatan semua bisa disini !",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: AppColors.darkBlue,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: AppColors.otherBlue,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          "Selengkapnya",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/ic_picture2.png",
                            height: 160,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(16),
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
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Layanan Khusus",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.otherBlue,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      "Tes Covid 19, Cegah Corona Sedini Mungkin",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: AppColors.darkBlue,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Daftar Tes",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.otherBlue,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        size: 15,
                                        color: AppColors.otherBlue,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/ic_layanan.png",
                              height: 120,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(16),
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
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Track Pemeriksaan",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.otherBlue,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          "Tes Covid 19, Cegah Corona Sedini Mungkin",
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: AppColors.darkBlue,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Daftar Tes",
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.otherBlue,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Icon(
                                            Icons.arrow_forward,
                                            size: 15,
                                            color: AppColors.otherBlue,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset(
                              "assets/ic_track.png",
                              height: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.shadowColor.withOpacity(0.16),
                                spreadRadius: 0,
                                blurRadius: 24,
                                offset: const Offset(
                                    0, 16), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            "assets/ic_filter.png",
                            height: 20,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: 260,
                            height: 50,
                            padding: const EdgeInsets.only(
                                left: 30, top: 14, bottom: 7, right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      AppColors.shadowColor.withOpacity(0.24),
                                  spreadRadius: 0,
                                  blurRadius: 24,
                                  offset: const Offset(
                                      0, 16), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: const Color(0XFF878787),
                                ),
                                suffixIcon: Image.asset(
                                  "assets/ic_search.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: List.generate(
                      label.length,
                      (index) => Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 0, right: 20),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 25),
                        decoration: BoxDecoration(
                          color: selectLabel == index
                              ? AppColors.otherBlue
                              : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: selectLabel == index
                                  ? AppColors.otherBlue.withOpacity(0.24)
                                  : AppColors.shadowColor.withOpacity(0.24),
                              spreadRadius: 0,
                              blurRadius: 24,
                              offset: const Offset(
                                  0, 16), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          label[index],
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: selectLabel == index
                                ? FontWeight.w700
                                : FontWeight.w600,
                            color: selectLabel == index
                                ? Colors.white
                                : AppColors.otherBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: List.generate(
                      2,
                      (index) => Container(
                        width: 170,
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 20, left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.shadowColor.withOpacity(0.24),
                              spreadRadius: 0,
                              blurRadius: 24,
                              offset: const Offset(
                                  0, 16), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/ic_rating.png",
                                  height: 15,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "5",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.shadowColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/example_picture2.png",
                              height: 80,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Suntik Steril",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.otherBlue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 10.000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.orange,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.lightGreen),
                                  child: Text(
                                    "Ready Stok",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkBlue,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pilih Tipe Layanan Kesehatan Anda",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.otherBlue,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadowColor.withOpacity(0.24),
                            spreadRadius: 0,
                            blurRadius: 24,
                            offset: const Offset(
                                0, 16), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectLayanan = 0;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectLayanan == 0
                                    ? AppColors.otherBluee
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Satuan",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: selectLayanan == 0
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectLayanan = 1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectLayanan == 1
                                    ? AppColors.otherBluee
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Paket Pemeriksaan",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: selectLayanan == 1
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: List.generate(
                        2,
                        (index) => Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.shadowColor.withOpacity(0.24),
                                spreadRadius: 0,
                                blurRadius: 24,
                                offset: const Offset(
                                    0, 16), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 21, bottom: 15, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cardLayanan[index]["nama"],
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.otherBlue,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "Rp ${NumberFormat.currency(locale: 'id', name: "", decimalDigits: 0).format(cardLayanan[index]["price"])}",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.orange,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/ic_name.png",
                                            height: 14,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            cardLayanan[index]["lokasi"],
                                            style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.otherBlue,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/ic_lokasi.png",
                                            height: 14,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            cardLayanan[index]["alamat"],
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.shadowColor,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/example_picture1.png",
                                height: 150,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: AppColors.otherBlue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingin mendapat update",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "dari kami ?",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Dapatkan",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "notifikasi",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
          //for drawer sidebar
          if (isDrawer == true)
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: const [0.1, 0.3],
                        colors: [
                          AppColors.otherBlue,
                          AppColors.otherBlue.withOpacity(0.8)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    alignment: Alignment.topCenter,
                    padding:
                        const EdgeInsets.only(left: 22, right: 10, top: 40),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isDrawer = false;
                        });
                      },
                      child: Image.asset(
                        "assets/ic_close.png",
                        height: 30,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    padding:
                        const EdgeInsets.only(left: 40, right: 10, top: 150),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0XFFEFF1FB), width: 1),
                                ),
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                  "assets/ava_profile.png",
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Angga ',
                                    style: GoogleFonts.poppins(
                                      color: AppColors.otherBlue,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Praja',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Membership BBLK",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        AppColors.otherBlue.withOpacity(0.55),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ProfileSayaScreen());
                          },
                          child: Row(
                            children: [
                              Text(
                                "Profile Saya",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 10,
                                color: Color(0XFF828282),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Pengaturan",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 10,
                              color: Color(0XFF828282),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () async {
                            SharedPreferences sharedPreferences =
                                await SharedPreferences.getInstance();
                            await sharedPreferences.clear();
                            Get.offAll(const LoginScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Logout",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Row(
                          children: [
                            Text(
                              "Ikuti kami di",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.otherBlue,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              "assets/ic_fb.png",
                              height: 15,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              "assets/ic_ig.png",
                              height: 18,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              "assets/ic_twitter.png",
                              height: 18,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              "FAQ",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.shadowColor,
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Terms and Conditions",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.shadowColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
