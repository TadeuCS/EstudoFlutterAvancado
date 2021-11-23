import 'dart:convert';

import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';

class ResultsModel extends Filme {
  // String originalTitle;
  // String overview;
  // String posterPath,
  ResultsModel({
    // required int id,
    required String title,
    required String overview,
    required String posterPath,
    // required String originalTitle,
    // required String releaseDate,
    // required String popularity,
  }) : super(titulo: title, descricao: overview, urlImage: posterPath);

//

  @override
  String toString() {
    return jsonEncode(this);
  }

  factory ResultsModel.fromMap(Map<String, dynamic> json) {
    return ResultsModel(
        title: json['title'],
        overview: json['overview'],
        posterPath:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2${json['poster_path']}');
  }

  factory ResultsModel.fromJson(String source) =>
      ResultsModel.fromMap(json.decode(source));
}
