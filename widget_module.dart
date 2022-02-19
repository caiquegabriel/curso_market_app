import 'package:flutter_modular/flutter_modular.dart';
import 'package:market/pages/home_page.dart';

class AppModule extends Module{ 

  List<Bind> get binds => [ 

  ];    

  List<ChildRoute> get routes =>  [
    ChildRoute('/', child:  ( context , args ) => const HomePage() )
  ];

}