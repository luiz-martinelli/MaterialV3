import 'package:provider/provider.dart';
import 'package:teste_material/counter_controller.dart';

final providers = [
  ChangeNotifierProvider<CounterController>(
    create: (context) => CounterController(),
  ),
 ];