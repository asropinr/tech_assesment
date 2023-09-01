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

  postLogin(String email, String password) async {
    update();
    final res = await api.postLogin(email, password);
    if (res.statusCode == 200) {
      suksesCallModel = SuksesCallModel.fromJson(res.data!);
    } else if (res.statusCode == 400) {
      gagalCallModel = GagalCallModel.fromJson(res.data!);
    }
  }
}
