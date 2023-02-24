import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.1,
      centerTitle: true,
      title:  Text("Shop With Me",style:GoogleFonts.badScript(color: Colors.white,
          fontWeight: FontWeight.w700,fontSize: 20),
      ),
      actions: [IconButton(onPressed: (){
       Navigator.pushNamed(context, 'cartPage');
      }, icon:Icon(Icons.shopping_cart),
          tooltip:'My Cart')],


    );//appbar

  }//widget
}//stateLessWidget