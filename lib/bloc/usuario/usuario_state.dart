part of 'usuario_bloc.dart';

class UsuarioState {
  // usualmente todas son final
  // si nos final se las inicializa directo o en el constructor
  // cambiar el nombre de las variables
  final bool existeUsuario;

  // si pongo this. estaría inicializando directo todo
  // ?? si es que existe usuario
  // UsuarioState({bool existeUsuario}) : existeUsuario = true ?? false;
  UsuarioState({bool existeUsuarioR}) : existeUsuario = existeUsuarioR ?? true;
}
