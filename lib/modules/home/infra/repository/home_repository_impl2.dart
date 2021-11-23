import 'package:estudo_flutter_intermediario/modules/home/domain/repositories/home_respository.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/datasources/home_datasource.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/model/movie_model.dart';
import 'package:flutter/cupertino.dart';

class HomeRepositoryImpl2 implements HomeRepository {
  final HomeDatasource _datasource;
  HomeRepositoryImpl2(this._datasource);

  @override
  Future<List<MovieModel>> listaFilmes() async {
    var filmesRetornados = <MovieModel>[];
    try {
      var response = await _datasource.listaFilmes();
      for (var item in response['results']) {
        filmesRetornados.add(MovieModel.fromMap(item));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return filmesRetornados;
  }
}
