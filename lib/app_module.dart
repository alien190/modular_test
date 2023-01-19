import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/home_page.dart';
import 'package:modular_test/name.dart';
import 'package:modular_test/second_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Name('app_module')),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ModuleRoute('/second', module: SecondModule()),
      ];
}
