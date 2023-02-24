import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';
import '../widgets/CartItemSamples.dart';
import 'package:google_fonts/google_fonts.dart';
class cartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       body: ListView(
         children: [
           CartAppBar(),
           Container(
             height: 700,
               padding: EdgeInsets.only(top: 15),
             decoration: BoxDecoration(
               color: Colors.blueGrey.withOpacity(0.4),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(15),
                 topRight: Radius.circular(15),
               )
             ),
             child: Column(
               children: [
                 CartItemsSamples(),
                 SizedBox(height: 90,),
                 Container(
                   height: 80,width: double.infinity,
                   margin: EdgeInsets.symmetric(horizontal: 55,vertical: 10),
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child:
                   Text("Buy Now",style: GoogleFonts.aladin(color: Colors.black,
                     fontWeight: FontWeight.w700,fontSize: 30,),textAlign:TextAlign.center,
                   ),
                 ),
           ],
           ),
           ),

         ],
       ),
    );//Scaffold
  }
}