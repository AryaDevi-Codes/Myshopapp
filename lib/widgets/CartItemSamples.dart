import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemsSamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i=1;i<4;i++)
        Container(
          height: 120,
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(value:" ", groupValue:" ",activeColor: Colors.blueGrey, onChanged: (index){},
              ),
              Container(
                height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                child: Image.asset("images/$i.png"),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product Title",style: GoogleFonts.badScript(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 23,),),
                Text("INR 450/-",style: GoogleFonts.albertSans (color: Colors.black,
                  fontWeight: FontWeight.w700,fontSize: 20,),)
                ],
              ),
              ),
              Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.delete_sharp,
                    color: Colors.blueGrey,),
                    Row(
                      children: [
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
                    )
                  ],

                ),
              )
            ],
          ),
        )
      ],
    );
  }
}