import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:new1/core/base_widget/base_click.dart';
import 'package:new1/core/constent.dart';
import 'package:new1/core/style/base_color.dart';

import '../Navbar/navbar.dart';
// import 'package:the_pos_new/ui/Home/home.dart';
// import 'package:the_pos_new/ui/Login/login.dart';



class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    PageDecoration pageDecoration =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0,
          fontWeight: FontWeight.w500,
          color:  DarkblueColor,
        fontFamily: "IBMPlexSans"
      ),
      imageFlex: 0,
      bodyFlex: 0,

      imageAlignment : Alignment.topCenter,
      imagePadding:EdgeInsets.only(top: 60),
      //tile font size, weight and color
      bodyTextStyle:TextStyle(
          fontSize: 16, color:LightblueColor),
      //body text size and color
      descriptionPadding: EdgeInsets.fromLTRB(6.0, 10.0, 16.0, 15.0),
      contentMargin :  EdgeInsets.all(10.0),
      titlePadding :  EdgeInsets.only(top: 20.0, bottom: 20.0),
      footerPadding :  EdgeInsets.symmetric(vertical: 24.0),

      bodyAlignment : Alignment.bottomCenter,
      //decription padding
      boxDecoration:BoxDecoration(
        gradient: LinearGradient(

                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [lightBlue, Colors.white]),
      ), //show linear gradient background of page
    );
    PageDecoration pageDecoration2 =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0,
          fontWeight: FontWeight.w500,
          color:  DarkblueColor,
      ),
      imageFlex: 0,
      bodyFlex: 0,
      imageAlignment : Alignment.topCenter,
      imagePadding:EdgeInsets.only(top: 60),
      //tile font size, weight and color
      bodyTextStyle:TextStyle(fontSize: 16.0, color:Color(0xffFE7748)),
      //body text size and color
      descriptionPadding: EdgeInsets.fromLTRB(6.0, 30.0, 16.0, 23.0),
      contentMargin :  EdgeInsets.all(10.0),
      titlePadding :  EdgeInsets.only(top: 30.0, bottom: 0.0),
      footerPadding :  EdgeInsets.symmetric(vertical: 24.0),

      bodyAlignment : Alignment.bottomCenter,
      //decription padding
      boxDecoration:BoxDecoration(
        gradient: LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [lightBlue, Colors.white]),
      ),//show linear gradient background of page
    );
    PageDecoration pageDecoration3 =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0,
          fontWeight: FontWeight.w500,
          color:  DarkblueColor,
      ),
      imageFlex: 0,
      bodyFlex: 0,
      boxDecoration:BoxDecoration(
        gradient: LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [lightBlue, Colors.white]),
      ),
      imageAlignment : Alignment.topCenter,
      imagePadding:EdgeInsets.only(top: 60),
      //tile font size, weight and color
      bodyTextStyle:TextStyle(fontSize: 15.0, color:LightblueColor),
      //body text size and color
      descriptionPadding: EdgeInsets.fromLTRB(6.0, 30.0, 16.0, 23.0),
      contentMargin :  EdgeInsets.all(10.0),
      titlePadding :  EdgeInsets.only(top: 30.0, bottom: 0.0),
      footerPadding :  EdgeInsets.symmetric(vertical: 24.0),

      bodyAlignment : Alignment.bottomCenter,
      //decription padding

    );
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:  SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      child: SafeArea(

        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(

              children: [
                Container(

                  height: size.height/1.17,
                  width: size.width/1,
                  child: IntroductionScreen(
                    color: Colors.white,
                   globalBackgroundColor: Colors.white,

                    pages: [

                      PageViewModel(


                          title: "Borderless Payment\nSolution for Everyone",//Basic String Title

                          body: 'Make payments to own accounts,\nother GenioPay users, within\nEurope and outside.',

                          image: Container(
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Image.asset(
                              'assets/image/Group1.png',
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration
                      ),
                      PageViewModel(


                          title: "Currency Exchange in\n70+ currencies",//Basic String Title

                          body: "Check our rates",

                          image: Container(
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Image.asset(
                              'assets/image/Group2.png',
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration2
                      ),

                      PageViewModel(

                          title: "Borderless Payment\nSolution for Everyone",//Basic String Title

                          body: 'Make payments to own accounts,\nother GenioPay users, within\nEurope and outside.',

                          image: Container(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Stack(
                             children: [
                               Image.asset("assets/image/Group31.png"),
                               Container(
                                 padding: EdgeInsets.only(left: 120,top: 20),
                                   child: Image.asset("assets/image/Group32.png")),
                             ],
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration
                      ),
                      PageViewModel(

                          title: "Get prepaid & Virtual\nMulti-Currency Cards",//Basic String Title

                          body: 'Get cards to use for your ATM\nPOS and online transactions.',

                          image: Container(
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Image.asset(
                              'assets/image/Group4.png',
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration
                      ),

                      PageViewModel(

                          title: "Connect your customers\nto your business",//Basic String Title

                          body: 'Take control of your finance as a business\nby leveraging on payment tools to send\nand recive payments from clients. ',

                          image: Container(
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Image.asset(
                              'assets/image/Group5.png',
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration3
                      ),
                      PageViewModel(

                          title: "Offsetting & Tracking\nyour CO2 emissions ",//Basic String Title

                          body: 'Reforest the planet when you spend on\nGenioPay & invest part of the fees in\ngreen initiatives..',

                          image: Container(
                            width: size.width/1,
                            height: size.height/2.5,
                            // padding: EdgeInsets.only(bottom: 100),
                            child: Image.asset(
                              'assets/image/Group6.png',
                            ),
                          ),
                          //If you want to you can also wrap around Alignment
                          reverse: false, //If widget Order is reverse - body before image

                          // footer: const Text('Footer'), //You can add button here for instance
                          decoration: pageDecoration
                      ),
                    ],

                    //If you provide both rawPages and pages parameter, pages will be used.



                    onDone: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>   const IntroductionPage()));
                    },

                    // onSkip: () {
                    //   // You can also override onSkip callback
                    // },
                    showSkipButton: false,
                    showNextButton: false,
                    showDoneButton:false,//Is the skip button should be display
                    skip: const Icon(Icons.skip_next),
                    next: const Icon(Icons.forward),
                    skipFlex: 0,
                    nextFlex: 0,
                    done: Container(
                        alignment: Alignment.center,
                        height: size.height/25,
                        width: size.width/5.7,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white))),

                    dotsDecorator: DotsDecorator(
                        spacing: const EdgeInsets.symmetric(horizontal: 5.0),
                        size: Size.square(10),
                        activeSize: const Size(25.0,5),
                        activeColor: DarkblueColor,
                        color: LightblueColor,

                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   padding: EdgeInsets.all(20),
                   child: baseClick(
                     onTap: (){
                       Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) => MyHomePage()));
                     },
                     height:45 ,
                     width: 150,
                     borderColor: DarkblueColor,
                     color: Colors.white,
                     colorTitle: DarkblueColor,
                     radius: 10,
                       BorderWidth: 3,
                     // sizeTitle: 15,
                     title:"Log in",
                     sizeTitle: 16,
                       FontWeight:FontWeight.w700
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.all(20),
                   child: baseClick(
                       onTap: (){
                         Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => MyHomePage()));
                       },
                       height:45 ,
                       width: 150,
                       borderColor: DarkblueColor,
                       color: DarkblueColor,
                       colorTitle: Colors.white,
                       radius: 10,
                       BorderWidth: 3,
                       // sizeTitle: 15,
                       title:"Sign Up",
                       sizeTitle: 16,
                       FontWeight:FontWeight.w700
                   ),
                 ),
               ],
             )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




