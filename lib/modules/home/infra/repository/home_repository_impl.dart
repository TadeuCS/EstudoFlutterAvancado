import 'package:estudo_flutter_intermediario/modules/home/domain/repositories/home_respository.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/datasources/home_datasource.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/model/page_model.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/model/results_model.dart';
import 'package:flutter/cupertino.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource _datasource;
  HomeRepositoryImpl(this._datasource);

  @override
  Future<List<ResultsModel>> listaFilmes() async {
    var filmesRetornados = <ResultsModel>[];
    try {
      var response = await _datasource.listaFilmes();
      return PageModel.fromJson(response).resultsModel;
    } catch (e) {
      debugPrint(e.toString());
    }
    return filmesRetornados;
  }
}
