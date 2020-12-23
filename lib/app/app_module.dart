import 'package:devmrcs_com/app/app_controller.dart';
import 'package:devmrcs_com/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/tcc/tcc_module.dart';

// app_module.dart
class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/tcc', module: TccModule()),
  ];

  @override
  final Widget bootstrap = AppWidget();
}
