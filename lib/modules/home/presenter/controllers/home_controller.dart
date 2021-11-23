import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';
import 'package:estudo_flutter_intermediario/modules/home/presenter/usecase/home_usecase.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  var filmes = ValueNotifier(<Filme>[]);

  var loading = ValueNotifier<bool>(false);
  final HomeUseCase _useCase;
  HomeController(this._useCase) {
    listaFilmes();
  }

  void init() {
    filmes.value = [
      Filme(
        titulo: 'Shang-Chi e a Lenda dos Dez Anéis',
        descricao:
            'Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.',
        urlImage:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
      ),
      Filme(
        titulo: 'Shang-Chi e a Lenda dos Dez Anéis',
        descricao:
            'Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.',
        urlImage:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
      ),
      Filme(
        titulo: 'Shang-Chi e a Lenda dos Dez Anéis',
        descricao:
            'Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.',
        urlImage:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
      ),
      Filme(
        titulo: 'Shang-Chi e a Lenda dos Dez Anéis',
        descricao:
            'Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.',
        urlImage:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
      ),
      Filme(
        titulo: 'Shang-Chi e a Lenda dos Dez Anéis',
        descricao:
            'Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.',
        urlImage:
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
      ),
    ];
  }

  Future<void> listaFilmes() async {
    try {
      loading.value = true;

      var result = await _useCase.listaFilmes();
      await Future.delayed(const Duration(seconds: 2));
      filmes.value = result;
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      loading.value = false;
    }
  }
}
