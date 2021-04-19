part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}

class ActivarUsuario extends UsuarioEvent {
  final bool existeUsuario;
  ActivarUsuario(this.existeUsuario);
}
