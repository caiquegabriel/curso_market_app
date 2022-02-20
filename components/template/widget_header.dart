import 'package:flutter/material.dart';
import 'package:market/components/widget_custom_image.dart';
import 'package:market/components/widget_search.dart';
import 'package:market/style.dart';

class Header extends StatelessWidget{ 
  const Header( { Key? key } ) : super( key : key );

  @override
  Widget build( BuildContext context ){

    double paddingTop = MediaQuery.of(context).padding.top;
    
    return  Container( 
          padding: EdgeInsets.only(left: 5, right: 5),
          width: double.infinity,
          height: 60 + paddingTop,
          decoration: BoxDecoration( 
            color: primaryColor, 
             border: Border( top: BorderSide( width: 0.5, color: Color.fromRGBO( 0, 0, 0, 0.2 ) ))
          ),
          child: SafeArea( 
            bottom: false,
            child: Row( 
              children: const [ 
                HeaderLogo(), 
                Expanded( 
                  child: Search()
                )
              ],
            )
          )
        );
  }
}

class HeaderLogo extends StatelessWidget{ 
  const HeaderLogo( { Key?  key } ) : super( key : key ); 

  @override
  Widget build( BuildContext context ){ 
    
    return Container( 
          width: 110,
          height: 45, 
          padding: EdgeInsets.all(2.5),
          child: CustomImage(
            imageUrl: "assets/images/logo_header_prin.png",
            width: 110, 
            height: 45, 
            fit: BoxFit.contain
          )
        );
  }
} 