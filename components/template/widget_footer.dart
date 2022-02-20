import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/components/buttons/widget_big_button.dart';

class Footer extends StatelessWidget{ 

  const Footer( { Key? key } ) : super( key : key );


  @override
  Widget build( BuildContext context ){

    double paddingBottom = MediaQuery.of(context).padding.bottom;

    return Container( 
      height: 90 + paddingBottom, 
      alignment: Alignment.center,
      decoration: BoxDecoration( 
        color: Colors.white,
        border: Border( top: BorderSide( width: 0.5, color: Color.fromRGBO( 0, 0, 0, 0.2 ) ))
      ),
      child: SafeArea( 
        top: false, 
        child: Row( 
          children: const [ 
            Expanded( 
              flex: 2,
              child: BigButton(
                title: "Home", 
                icon: CupertinoIcons.home
              )
            ),
            Expanded( 
              flex: 2,
              child: BigButton(
                title: "Seção", 
                icon: CupertinoIcons.list_bullet
              )
            ),
            Expanded( 
              flex: 2, 
              child: BigButton(
                title: "Desejo", 
                icon: CupertinoIcons.heart
              )
            ),
            Expanded( 
              flex: 2,
              child: BigButton(
                title: "Sacola", 
                icon: CupertinoIcons.bag
              )
            ),
            Expanded( 
              flex: 2,
              child: BigButton(
                title: "Perfil", 
                icon: CupertinoIcons.person
              )
            ),
          ],
        )
      ) 
    );
  }
}