import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count
      (childAspectRatio: 0.68,

        //physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for(int i=1;i<11;i++)
          Container(

            padding: EdgeInsets.only(left:15,right:15,top: 10),
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child:Column(
                children: [
                  Container(

                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(

                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.topCenter,
                    child: Text("-45% ",style: TextStyle(fontWeight:FontWeight.w700,
                        fontSize: 16,color: Colors.white)),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      padding: EdgeInsets.only(top:5),
                      margin: EdgeInsets.zero,
                      child: Image.asset("images/$i.png",height: 120,width: 120,),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    alignment:Alignment.bottomCenter,
                    child: Text("Product",
                      style: GoogleFonts.badScript(color: Colors.white,
                        fontWeight: FontWeight.w700,fontSize: 30,
                        //TextStyle(
                        // fontSize: 27,
                        //  color: Colors.red,
                        // fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ]
            ),
          )



        ]

    );





  }
}