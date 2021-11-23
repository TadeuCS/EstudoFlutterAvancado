import 'package:dio/dio.dart';

class Constants {
  static final baseOptions = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      //Para gerar uma API_KEY é necessário fazer um cadastro no site: https://www.themoviedb.org/
      queryParameters: {'api_key': ''});
}
