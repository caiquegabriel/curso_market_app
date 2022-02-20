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
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [ 
            Icon(
              widget.icon, 
              size: 26
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