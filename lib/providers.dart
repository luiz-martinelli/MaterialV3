import 'package:provider/provider.dart';
import 'package:teste_material/counter_controller.dart';
import 'package:teste_material/usuario_controller.dart';
import 'package:teste_material/usuario_repository.dart';

final providers = [
  ChangeNotifierProvider<CounterController>(
    create: (context) => CounterController(),
  ),
  Provider<UsuariosRepository>(
    create: (context) => UsuariosRepository(),
  ),
  ChangeNotifierProvider<UsuariosController>(
    create: (context) => UsuariosController(
      usuariosRepository: context.read<UsuariosRepository>(),
    ),
  ),
];