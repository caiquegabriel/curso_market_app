import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:market/widget_app.dart';
import 'package:market/widget_module.dart';
 
void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: App()
    )
  );
}