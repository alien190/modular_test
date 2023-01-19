import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/name.dart';
import 'package:modular_test/second_page.dart';

class SecondModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Name('second_module')),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SecondPage()),
      ];
}
