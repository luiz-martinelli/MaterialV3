import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_material/app.dart';
import 'package:teste_material/providers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: App(),
    ),
  );
}