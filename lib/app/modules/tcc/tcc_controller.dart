import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tcc_controller.g.dart';

@Injectable()
class TccController = _TccControllerBase with _$TccController;

abstract class _TccControllerBase with Store {}
