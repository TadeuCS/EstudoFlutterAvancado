import 'dart:convert';

import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';

class MovieModel extends Filme {
  // String filme;
  // String url;
  // String detalhes;
  MovieModel(
      {required String filme, required String url, required String detalhe})
      : super(titulo: filme, urlImage: url, descricao: detalhe);

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      filme: map['filme'],
      url: 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2${map['url']}',
      detalhe: map['detalhe'],
    );
  }

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source));
}
