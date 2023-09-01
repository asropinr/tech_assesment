import 'package:dio/dio.dart';
import 'package:technical_assessment/constan/endpoint.dart';
import 'package:technical_assessment/helper/network_response.dart';

class AuthDataSource {
  final dio = Dio();

  Future<NetworkResponse> postLogin(email, password) async {
    String endpoint = "${Endpoint.baseUrl}${Endpoint.login}";
    try {
      final res = await dio.post(
        endpoint,
        data: {
          "email": email,
          "password": password,
        },
      );

      return NetworkResponse.success(
          data: res.data, statusCode: res.statusCode);
    } on DioException catch (e) {
      return NetworkResponse.error(
          data: e.response!.data, statusCode: e.response!.statusCode);
    }
  }
}
