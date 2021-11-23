import 'package:estudo_flutter_intermediario/modules/home/domain/usecases/home_usecase_impl.dart';
import 'package:estudo_flutter_intermediario/modules/home/external/datasources/home_datasource2_impl.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/repository/home_repository_impl2.dart';
import 'package:estudo_flutter_intermediario/modules/home/presenter/controllers/home_controller.dart';
import 'package:estudo_flutter_intermediario/modules/movie/movie_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeDatasourceImpl2(i())),
    Bind((i) => HomeRepositoryImpl2(i())),
    Bind((i) => HomeUseCaseImpl(i())),
    Bind((i) => HomeController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => const HomePage()),
    ModuleRoute('/movie/', module: MovieModule())
  ];
}
