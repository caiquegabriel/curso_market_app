import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/components/buttons/widget_big_button.dart'; 

class HomePage extends StatefulWidget{ 
  const HomePage( { Key? key } ) : super( key : key );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{ 

  @override
  Widget build( BuildContext context ){
    return Scaffold( 
      body: SafeArea( 
        bottom: false,
        child: Container( 
          height: 90,
          color: Colors.red,
          alignment: Alignment.center,
          child: 
            Row( 
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
      )
    );
  }

}