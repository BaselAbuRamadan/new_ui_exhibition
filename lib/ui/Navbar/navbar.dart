import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new1/ui/Home/home.dart';
// import 'package:bloc_app/ui/profile2/profile2.dart';
import 'package:built_value/built_value.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:new1/core/constent.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:bloc_app/ui/Cart/Cart.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of first screen
  int? isSelected ;
  AnimationController? _animationController;
  Animation<double>? animation;
  CurvedAnimation? curve;

  final List<Widget>screens = [
    const Home(),
    // Winners(),
    // Wishlist(),
    // Cart(),
    // const Profile()
  ];


  Widget currentScreen = const Home();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),


      floatingActionButton:  FloatingActionButton(
        elevation: 5,

        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              'assets/image/home1.svg',
              height: 30.0,
              width: 30.0,
              allowDrawingOutsideViewBox: true,
            ),

          ],
        ),

        backgroundColor: Colors.black,
        onPressed: (){
          setState(() {
            currentScreen = const Home();
            isSelected  = 4;
          });

        } ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.all(5),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  // setState(() {
                  //   currentScreen=null;
                  //   isSelected  = 0 ;
                  // });
                },
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      // color:(isSelected == 0)? Colors.black:Colors.white ,
                      child: SvgPicture.asset(

                        'assets/image/money1.svg',
                        height: 30.0,
                        width: 20.0,
                        // color:(isSelected == 0)? Colors.black:Colors.white ,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    // Image.asset((isSelected == 0)?
                    // 'assets/image/surface_green.png'
                    //     : 'assets/image/surface1.png',
                    //
                    //   height: 30,
                    //   width: 25,
                    // ),



                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 50),
                child:MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    // setState(() {
                    //   currentScreen = Home();
                    //   isSelected  = 1 ;
                    // });
                  },
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        // color:(isSelected == 1)? Colors.black:Colors.white ,
                        child: SvgPicture.asset(

                          'assets/image/money2.svg',
                          height: 30.0,
                          width: 20.0,
                          // color:(isSelected == 0)? Colors.black:Colors.white ,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),

                    ],
                  ),
                ),

              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child:MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    // setState(() {
                    //   currentScreen = Cart();
                    //   isSelected  = 2;
                    // });
                  },

                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        // color:(isSelected == 2)? Colors.black:Colors.white ,
                        child: SvgPicture.asset(

                          'assets/image/wallet1.svg',
                          height: 30.0,
                          width: 20.0,
                          // color:(isSelected == 0)? Colors.black:Colors.white ,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      ),

                    ],
                  ),
                ),

              ),
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    // currentScreen = const Profile() ;
                    isSelected  = 3;
                  });
                },
                // Image.asset('assets/image/prof.png',

                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      // color:(isSelected == 0)? Colors.black:Colors.white ,
                      child: SvgPicture.asset(

                        'assets/image/menu1.svg',
                        height: 30.0,
                        width: 20.0,
                        // color:(isSelected == 0)? Colors.black:Colors.white ,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),





    );
  }


}






