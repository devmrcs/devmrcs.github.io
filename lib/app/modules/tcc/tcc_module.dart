import 'tcc_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tcc_page.dart';

class TccModule extends ChildModule {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => TccController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => TccPage()),
  ];
}
