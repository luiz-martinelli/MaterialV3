import 'package:flutter/material.dart';
import 'package:teste_material/pages/my_home_page.dart';
import 'package:teste_material/tema_custom.dart';


class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final ValueNotifier<bool> materialNotifier = ValueNotifier(false);
  final MaterialColor colorSeed = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: materialNotifier,
      builder: (context, bool material3, _) {
        return MaterialApp(
          title: 'Flutter 3',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            useMaterial3: material3,
            colorScheme: material3 ? ColorScheme.fromSeed(seedColor: colorSeed) : null,
            primaryColor: !material3 ? colorSeed : null,
            extensions: <ThemeExtension<dynamic>>[
              TemaCustom(
                cor: const Color.fromARGB(34, 109, 57, 141),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color.fromARGB(239, 255, 142, 142),
                ),
              ),
            ],
          ),

          home: MyHomePage(title: 'Flutter 3', material3: materialNotifier)
        );        
      }
    );
  }
}