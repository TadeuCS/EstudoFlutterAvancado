import 'dart:convert';

import 'results_model.dart';

class PageModel {
  late int page;
  late List<ResultsModel> resultsModel;
  late int totalPages;
  late int totalResultsModel;

  PageModel(
      {required this.page,
      required this.resultsModel,
      required this.totalPages,
      required this.totalResultsModel});

  PageModel.fromJson(Map<String, dynamic> json) {
    page = json['page'] ?? 1;
    if (json['results'] != null) {
      resultsModel = <ResultsModel>[];
      json['results'].forEach((v) {
        resultsModel.add(ResultsModel.fromMap(v));
      });
    }
    totalPages = json['total_pages'] ?? 0;
    totalResultsModel = json['total_ResultsModel'] ?? 0;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
