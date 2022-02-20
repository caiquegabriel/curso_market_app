import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigButton extends StatefulWidget{ 

  final String title; 

  final IconData icon;

  const BigButton( { Key? key, required this.title, required this.icon } ) : super( key : key );

  @override
  BigButtonState createState() => BigButtonState();

}

class BigButtonState extends State<BigButton>{ 

  bool _tapped = false; 


  @override
  Widget build( BuildContext context ){
    return InkWell( 
      onTap: (){ 
         
      },
      child: Container( 
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 10, 
          left: 5, 
          right: 5, 
          bottom: 10
        ),
        width: double.infinity,    
        decoration: BoxDecoration( 
          color: Colors.white,
          border: Border.all( width: 0.5, color: Color.fromARGB(255, 185, 185, 185) ), 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [ 
            Icon(
              widget.icon, 
              size: 28
            ),
            Container( 
              margin: EdgeInsets.only( top: 10 ),
              child: Text(
                widget.title, 
                maxLines: 1,
                softWrap: true,
                style: const TextStyle( 
                  fontSize: 13, 
                  color: Colors.grey, 
                  overflow: TextOverflow.ellipsis
                )
              )
            ) 
          ],
        )
      )
    );
  }

}