import 'package:bookly_app/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final _baseUrl = kBaseUrl;
  final Dio dio;
  //Get Request Method
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
