import 'package:dio/dio.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/datasources/home_datasource.dart';
import 'package:flutter/foundation.dart';

class HomeDatasourceImpl implements HomeDatasource {
  final Dio _dio;
  HomeDatasourceImpl(this._dio);
  @override
  Future<Map<String, dynamic>> listaFilmes() async {
    try {
      _dio.options.queryParameters.addAll({'language': 'pt-BR'});
      Response response = await _dio.get('/movie/popular');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        debugPrint(response.statusCode.toString());
        throw Exception('Erro ao listar filmes na API');
      }
    } catch (e) {
      rethrow;
    }
  }
}
