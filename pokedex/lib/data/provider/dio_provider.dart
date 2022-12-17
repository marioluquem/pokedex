import 'package:dio/dio.dart';

class DioProvider {
  late Dio dio;
  final String host = 'https://pokeapi.co/api/v2';
  DioProvider() {
    dio = Dio(BaseOptions(baseUrl: host));
  }
}
