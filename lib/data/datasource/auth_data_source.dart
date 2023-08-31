import 'package:dio/dio.dart';
import 'package:technical_assessment/constan/endpoint.dart';

class AuthDataSource {
  final dio = Dio();

  Future<String> postLogin(email, password) async {
    String endpoint = "${Endpoint.baseUrl}${Endpoint.login}";
    try {
      final respon = await dio.post(
        endpoint,
        data: {
          "email": email,
          "password": password,
        },
      );
      if (respon.statusCode == 200) {
        print(respon.data);
        return respon.data;
      } else if (respon.statusCode == 400) {
        print(respon.data);
        return respon.data;
      }
    } catch (e) {
      print(e.toString());
    }

    return "";
  }
}
