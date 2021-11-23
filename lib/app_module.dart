import 'package:dio/dio.dart';
import 'package:estudo_flutter_intermediario/modules/home/home_module.dart';
import 'package:estudo_flutter_intermediario/utils/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio(Constants.baseOptions)),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule())
  ];
}
