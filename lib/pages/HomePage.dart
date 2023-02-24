import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidgets.dart';
import '../widgets/MyCarousal.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        drawer:Drawer(
        child: ListView(
        children:[
        DrawerHeader(
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/saree1.jpeg'),
          fit: BoxFit.cover,
        ),
      color: Colors.black,
    ),
    child:Text("Shop with Me",
    style:GoogleFonts.badScript(color: Colors.white,
    fontWeight: FontWeight.w700,fontSize: 45),
    ),

    padding: EdgeInsets.only(top:55,left:30),
    ),
    ListTile(

    leading: Icon(Icons.person),
    title: Text('My Profile'),
    //onTap: (){}

    //,
    ),
    ListTile(

    leading: Icon(Icons.favorite),
    title: Text('Wishlist'),
    //onTap: (){}

    //,
    ),
    ListTile(

    leading: Icon(Icons.notifications),
    title: Text('Notifications'),
    //onTap: (){}

    //,
    ),
    ListTile(

    leading: Icon(Icons.phone),
    title: Text('Contact Us'),
    //onTap: (){}

    //,
    ),
    ListTile(

    leading: Icon(Icons.share),
    title: Text('Share'),
    onTap: (){}

    //,
    )
        ]
        )
        ),


        body:

           ListView(
              children:[


                HomeAppBar(),
                SizedBox(height:2),
                MyCarousal(),
                SizedBox(height: 10),
                Container(
                  height:430,
                  color: Colors.black12,
                    child: ItemsWidget()
                  ),

              ]
          ),

    );







  }//widget


}//homepage