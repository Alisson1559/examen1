import 'dart:js';

import 'package:flutter/material.dart';
import 'package:examen1_flutter/src/Bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/perfil.jpg'),
          emailfield(),
          passwordfield(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(),
        ],
      ),
    );
  }
}

Widget emailfield() {
  var bloc;
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'you@example.com', labelText: 'Email', errorText: ''),
          onChanged: (value) => bloc.changeEmail);
    },
  );
}

Widget passwordfield() {
  var bloc;
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
          decoration:
              InputDecoration(labelText: 'Contraseña', hintText: 'Contraseña'),
          onChanged: (value) => bloc.changePassword);
    },
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Enviar'),
    onPressed: () {},
  );
}
