import 'package:flutter/material.dart';
import 'package:examen1_flutter/src/Bloc/bloc.dart';

class Provider extends InheritedWidget {

  Provider({Key key, Widget child}) : super(key: Key, child: 

  final bloc = Bloc();
  bool updateShouldNotify(_) => true;
  static Bloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
}
