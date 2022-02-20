import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/components/buttons/widget_big_button.dart';
import 'package:market/components/template/widget_footer.dart';
import 'package:market/components/template/widget_header.dart'; 

class HomePage extends StatefulWidget{ 
  const HomePage( { Key? key } ) : super( key : key );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{ 

  @override
  Widget build( BuildContext context ){
    return Scaffold( 
      body: 
        Column(  
          children: [ 
            Header(), 
            Expanded( 
              child: Container( 
                height: double.infinity,
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.all(0),
                )
              )
            ),
            Footer()
          ], 
      )
    );
  }

}