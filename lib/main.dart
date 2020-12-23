import 'package:flutter/material.dart';
import 'package:devmrcs_com/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  configureApp();
  runApp(ModularApp(module: AppModule()));
}
