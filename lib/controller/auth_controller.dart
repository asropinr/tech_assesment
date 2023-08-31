import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_assessment/data/datasource/auth_data_source.dart';
import 'package:technical_assessment/data/model/gagal_call_model.dart';
import 'package:technical_assessment/data/model/sukses_call_model.dart';

class AuthController extends GetxController {
  final api = AuthDataSource();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  SuksesCallModel? suksesCallModel;
  GagalCallModel? gagalCallModel;

  postLogin() async {
    update();
    await api.postLogin("eve.holt@reqres.in", "");
  }
}
