import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class itemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black,
      padding: EdgeInsets.all(15),
      child: Row(children: [
          InkWell(onTap: (){
            Navigator.pop(context);
          },
           child: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
               ),
           Padding(padding: EdgeInsets.only(left: 20),
              child: Text("Product",style: GoogleFonts.badScript(color: Colors.white,
                  fontWeight: FontWeight.w700,fontSize: 20,),
           ),
         ),
        Spacer(),
        Icon(Icons.favorite,size: 28,color: Colors.white,)
    ],
    ),
    );

  }
}