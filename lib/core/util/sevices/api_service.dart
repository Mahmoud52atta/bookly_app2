import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
