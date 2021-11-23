import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';

abstract class HomeUseCase {
  Future<List<Filme>> listaFilmes();
}
