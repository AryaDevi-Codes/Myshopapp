import 'package:flutter/material.dart';


import '../widgets/itemAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class itemPage extends StatelessWidget{
  List<Color> Clrs=[
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.orange,

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView( scrollDirection:Axis.vertical,
        children: [
          itemAppBar(),
          Padding(padding: EdgeInsets.only(top: 30,bottom: 50),
          child: Image.asset("images/5.png",height: 300),),

          Container(
            padding: EdgeInsets.only(bottom: 8,left: 10),
            alignment:Alignment.bottomLeft,
            child: Text("Product Name",
              style: GoogleFonts.badScript(color: Colors.black,
                fontWeight: FontWeight.w700,fontSize: 35,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              RatingBar.builder(

                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 25,
                itemPadding: EdgeInsets.only(bottom: 8,left: 10,),
                itemBuilder: (context,_)=>Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                onRatingUpdate: (index){},

              ),

          Row(
                  children: [

                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.add,size: 18,color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "01",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: Icon(Icons.remove,size: 18,color: Colors.white,
                      ),
                    ),

                  ],
                ),


            ],
          ),
        Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Text("Size",
              style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10,),
            Row(
              children: [
                for(int i=4;i<9;i++)
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                    )
                  ],
                ),
                child: Text(i.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ],
            ),
            SizedBox(height: 20,),

          ],
        ),
        ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text("Color",
                  style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5,),
                Row(
                  children: [
                    for(int i=0;i<5;i++)
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Clrs[i],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8,
                            )
                          ],
                        ),

                      ),
                  ],
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),



        Padding(padding: EdgeInsets.symmetric(vertical: 22,horizontal: 17),
          child: Text("This product is one of the best sellers and most of the consumers are happy,A product description is a piece of writing that conveys the features and benefits of a product, ranging from basic facts to stories that make a product compelling to an ideal buyer.A product description is a copy on your product page that is used to explain the features and benefits of your product. It successfully answers all the questions your customers might have, including product detail and information not otherwise evident through product images and videos",
            textAlign:TextAlign.justify,style: GoogleFonts.albertSans (color: Colors.blueGrey,
            fontWeight: FontWeight.w600,fontSize: 20,),),
        ),
          ],

        ),


    );
  }
}