import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/style.dart';

class Search extends StatefulWidget{ 

  const Search( { Key?  key } ) : super( key : key ); 

  @override
  SearchState createState() => SearchState(); 
}

class SearchState extends State<Search>{

  bool _tapped = false;

  @override
  Widget build( BuildContext context ){ 

  void _tap(){ 
    if( !mounted ) return; 

    setState((){
      _tapped = true;
    });
  }
    
  return  Container(   
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10),
        height: 45,
        decoration: BoxDecoration( 
          color: _tapped ? Colors.white : Color.fromRGBO(255, 255, 255, 0.1), 
          border: Border.all( 
            width: 0.5, color: Color.fromRGBO(255, 255, 255, 0.5)
          ),
          borderRadius: BorderRadius.circular(40),  
        ),  
        child: TextField( 
          onTap: _tap,
          cursorColor: primaryColor, 
          style: TextStyle( 
            color: Colors.grey, 
            fontSize: 15
          ),
          decoration: InputDecoration(    
            icon: Icon( CupertinoIcons.search, color: !_tapped ?  Color.fromRGBO(255, 255, 255, 0.3) : Colors.grey ,),
            focusColor: Colors.grey, 
            focusedBorder: InputBorder.none,  
            border: InputBorder.none, 
            hintText: "Pesquisar ...", 
            hintStyle: TextStyle( fontSize: 15, color: Color.fromRGBO(255, 255, 255, 0.3), height: 0)
          )
        )
      );
  }
}