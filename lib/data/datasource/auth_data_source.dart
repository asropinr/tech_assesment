import 'package:dio/dio.dart';
import 'package:technical_assessment/constan/endpoint.dart';
import 'package:technical_assessment/data/model/gagal_call_model.dart';
import 'package:technical_assessment/data/model/sukses_call_model.dart';

class AuthDataSource {
  final dio = Dio();

  Future<dynamic> postLogin(email, password) async {
    String endpoint = "${Endpoint.baseUrl}${Endpoint.login}";
    try {
      final res = await dio.post(
        endpoint,
        data: {
          "email": email,
          "password": password,
        },
      );
      if (res.statusCode == 200) {
        print(res.data);
        return SuksesCallModel.fromJson(res.data);
      } else if (res.statusCode == 400) {
        print(res.data);
        return GagalCallModel.fromJson(res.data);
      } else {
        throw Exception("Unknown error occurred");
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return GagalCallModel.fromJson(e.response!.data);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
