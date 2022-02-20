import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget{ 

  final String imageUrl;

  final double width; 

  final double height; 

  final BoxFit? fit;
  
  CustomImage( { Key? key, required this.imageUrl, required this.width, required this.height, this.fit } ) : super ( key : key );

  @override
  CustomImageState createState() => CustomImageState();
}
 

class CustomImageState extends State<CustomImage>{ 
  
  @override
  Widget build( BuildContext context ){
    return Container( 
      child: Image.asset(
        widget.imageUrl, 
        width: widget.width, 
        height: widget.height, 
        fit: widget.fit ?? BoxFit.cover
      )
    );
  }

}