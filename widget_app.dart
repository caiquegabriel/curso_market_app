import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatefulWidget{ 
  const App( { Key? key } ) : super( key : key );

  @override
  AppState createState() => AppState();
}

class AppState extends State<App>{ 

  @override
  Widget build( BuildContext context ){
    return MaterialApp( 
      initialRoute : '/', 
      debugShowCheckedModeBanner: false
    ).modular();
  }

}