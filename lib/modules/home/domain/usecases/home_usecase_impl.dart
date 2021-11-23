import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';
import 'package:estudo_flutter_intermediario/modules/home/domain/repositories/home_respository.dart';
import 'package:estudo_flutter_intermediario/modules/home/presenter/usecase/home_usecase.dart';

class HomeUseCaseImpl implements HomeUseCase {
  final HomeRepository _repository;
  HomeUseCaseImpl(this._repository);

  @override
  Future<List<Filme>> listaFilmes() async {
    try {
      return _repository.listaFilmes();
    } catch (e) {
      rethrow;
    }
  }
}
