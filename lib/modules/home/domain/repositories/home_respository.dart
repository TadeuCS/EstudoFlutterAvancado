import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';

abstract class HomeRepository {
  Future<List<Filme>> listaFilmes();
}
