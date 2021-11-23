import 'dart:convert';

class Filme {
  final String titulo;
  final String descricao;
  final String urlImage;

  Filme({
    required this.titulo,
    required this.descricao,
    required this.urlImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'descricao': descricao,
      'urlImage': urlImage,
    };
  }

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      titulo: map['titulo'],
      descricao: map['descricao'],
      urlImage: map['urlImage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Filme.fromJson(String source) => Filme.fromMap(json.decode(source));
}
