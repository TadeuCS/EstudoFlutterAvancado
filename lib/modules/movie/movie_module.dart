import 'package:estudo_flutter_intermediario/modules/movie/movie_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MovieModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => const MoviePage())
  ];
}
