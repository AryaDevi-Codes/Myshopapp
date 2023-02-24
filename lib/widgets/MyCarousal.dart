import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyCarousal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider( options: CarouselOptions(
            height: 250.0, autoPlay: true,enlargeCenterPage: true
        ),
          items: _imgURL.map((imagepath) {
            return Builder(builder: (BuildContext context){
              return Container(width: MediaQuery.of(context).size.width,

                child: Image.network(imagepath),
              );
            },);
          }).toList(),
        )
    );

  }//Widget
  final List _imgURL=['https://i.pinimg.com/474x/63/c0/73/63c0737dc710f089f84184f5a19b82f5.jpg',
    'https://i.pinimg.com/originals/47/1c/2f/471c2f771739c0c8364bfb54d1acd1b5.jpg',
    'https://www.orthoticshop.com/images/D/20373_2K40_OluKai_S19_W_UiKoo_SlvBlk_20373_Profile.jpg',
    'https://i.pinimg.com/originals/65/0c/86/650c8666b115c9eeaae0722817ae6eaf.jpg',
    'https://m-cdn.phonearena.com/images/article/108264-wide-two_1600/Google-reveals-Wear-OS-interface-updates.-This-is-how-the-Pixel-Watch-software-will-look.jpg?1535551568',
    'https://2.bp.blogspot.com/-a1fPNKLeQP8/V1DtuZ1lS_I/AAAAAAAABYE/2MyiS8Q9qtsJ6QYDyDZKprDMY7rBXW9pwCLcB/w1200-h630-p-k-no-nu/11st_co_kr_20160603_113715.jpg'   ,                ];
}//StateLessWidget