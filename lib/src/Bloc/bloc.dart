import 'dart:async';
import 'package:examen1_flutter/src/Bloc/validardatos.dart';

class Bloc with ValidarDatos {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(valiEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(valiPassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
