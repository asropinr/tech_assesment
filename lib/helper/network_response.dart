import 'package:technical_assessment/constan/const.dart';

class NetworkResponse {
  final Status status;
  final Map<String, dynamic>? data;
  final int? statusCode;

  NetworkResponse(
    this.status,
    this.data,
    this.statusCode,
  );

  static NetworkResponse success({data, int? statusCode}) {
    return NetworkResponse(Status.success, data, statusCode);
  }

  static NetworkResponse error({data, int? statusCode}) {
    return NetworkResponse(Status.error, data, statusCode);
  }
}
