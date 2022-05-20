import 'package:flutter/material.dart';
import 'package:teste_material/usuario.dart';
import 'package:teste_material/usuario_repository.dart';

class UsuariosController extends ChangeNotifier {
  List<Usuario> usuarios = [];
  UsuariosRepository usuariosRepository;

  String avatarDefault = 'https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-64.png';

  UsuariosController({required this.usuariosRepository}) {
    loadUsuarios();
  }

  loadUsuarios() async {
    usuarios = await usuariosRepository.getAll();
    debugPrint('Quantidade Controller: ${usuarios.length}');
    notifyListeners();
  }
}