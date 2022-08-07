import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/core/constent.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: BackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20,top: 20),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/image/prof.png"),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25,left: 10,right: 15),
                      child: Text("Good Morning",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12)),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:5,left: 10),
                      child: Text("John Smith",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      child:   SvgPicture.asset(
                        'assets/image/gift1.svg',
                        height: 25.0,
                        width: 20.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      child:   SvgPicture.asset(
                        'assets/image/tree1.svg',
                        height: 25.0,
                        width: 20.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      child:   SvgPicture.asset(
                        'assets/image/ring1.svg',
                        height: 25.0,
                        width: 20.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 7,
            ),

            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: size.height/20,
                              width: size.width/1.9,
                              padding: EdgeInsets.only(right: 10,top: 20),

                              child: Text("Total Balance",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 10,left: 20,right: 5),

                                  child: Text('\$10,250.00',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  child:   SvgPicture.asset(
                                    'assets/image/pass1.svg',
                                    height: 20.0,
                                    width: 20.0,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: size.height/27,
                              width: size.width/2,
                              child: Text("USD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width/5,
                ),
                Row(
                  children: [
                    Image.asset("assets/image/flag1.png"),
                    SizedBox(width: 7),
                    Image.asset("assets/image/arrow.png"),
                  ],
                )
              ],
            ),
            Container(
              width: size.width/1,
              height: size.height/1.67,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height/18,
                            width: size.width/8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                                color: BackColor
                            ),
                            padding: EdgeInsets.all(11),
                            margin: EdgeInsets.all(size.width/19),
                            child: SvgPicture.asset(
                              'assets/image/arrow2.svg',
                              height: 20.0,
                              width: 20.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Container(child: Text ("Pay Out",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: size.height/18,
                            width: size.width/8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: BackColor
                            ),
                            padding: EdgeInsets.all(11),
                            margin: EdgeInsets.all(size.width/19),
                            child: SvgPicture.asset(
                              'assets/image/money.svg',
                              height: 20.0,
                              width: 20.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Container(child: Text ("Pay In",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: size.height/18,
                            width: size.width/8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: BackColor
                            ),
                            padding: EdgeInsets.all(11),
                            margin: EdgeInsets.all(size.width/19),
                            child: SvgPicture.asset(
                              'assets/image/swap.svg',
                              height: 20.0,
                              width: 20.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Container(child: Text ("Exchange",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: size.height/18,
                            width: size.width/8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: BackColor
                            ),
                            padding: EdgeInsets.all(11),
                            margin: EdgeInsets.all(size.width/19),
                            child: SvgPicture.asset(
                              'assets/image/dots.svg',
                              height: 20.0,
                              width: 20.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          Container(child: Text ("More",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height/45,
                  ),
                  Container(
                    width: size.width/1,
                    height: 1,
                    color: BackColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: size.width/17,vertical: size.height/50),
                        child: Text("Recent transactions",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                      ),
                      Container(
                        width: size.width/5,
                        padding: EdgeInsets.only(top: 5,left: 10, right: 10,),
                        child: Text("View All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,
                          decoration: TextDecoration.underline,),),
                      ),
                    ],
                  ),
                  Row(
                    children: [

                      Container(
                        height: size.height/35,
                        padding: EdgeInsets.symmetric(horizontal: size.width/17),
                        child: Text("29 Dec, 2022"),)
                    ],
                  ),
                  SizedBox(
                    height: size.height/55,
                  ),
                  Container(
                    width: size.width/1,
                    height: 1,
                    color: BackColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children:[
                              Container(

                         height: size.height/14,
                        width: size.width/7.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: BackColor
                        ),
                        padding: EdgeInsets.all(11),
                        margin: EdgeInsets.all(size.width/30),
                        child: SvgPicture.asset(
                          'assets/image/dots.svg',
                          height: 20.0,
                          width: 20.0,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),]

                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom:10),
                                child: Text("Bank of America",style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.w700),),
                              ),
                              Container(
                                width: size.width/3,
                                child: Text("Pay In",style: TextStyle(fontSize: 10),),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                               top: 12,
                                right: 10
                              ),
                                child: Text("\$1000.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)),
                            Container(
                                padding: EdgeInsets.only(
                                    bottom: 5,
                                    top: 5,
                                    right: 10
                                ),
                                child: Text("Completed",style: TextStyle(fontSize: 10,color: Colors.greenAccent),)),
                          ],
                        )
                      ],)
                    ],
                  ),
              SizedBox(
                height: 1,
              ),
              Container(
                width: size.width/1,
                height: 1,
                color: BackColor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                              children:[
                                Container(

                                  height: size.height/14,
                                  width: size.width/7.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: BackColor
                                  ),
                                  padding: EdgeInsets.all(11),
                                  margin: EdgeInsets.all(size.width/30),
                                  child: SvgPicture.asset(
                                    'assets/image/arrow2.svg',
                                    height: 20.0,
                                    width: 20.0,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),]

                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom:10),
                                child: Text("Voucher NA23OA2343...",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700),),
                              ),
                              Container(
                                width: size.width/2.1,
                                child: Text("Pay In",style: TextStyle(fontSize: 10),),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    top: 12,
                                    right: 10
                                ),
                                child: Text("\$99.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)),
                            Container(
                                padding: EdgeInsets.only(
                                    bottom: 5,
                                    top: 5,
                                    right: 10
                                ),
                                child: Text("In Progress",style: TextStyle(fontSize: 10,color: Colors.orangeAccent),)),
                          ],
                        )
                      ],)
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                      width: size.width/1,
                      height: 1,
                      color: BackColor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                              children:[
                                Container(

                                  height: size.height/14,
                                  width: size.width/7.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: BackColor
                                  ),
                                  padding: EdgeInsets.all(11),
                                  margin: EdgeInsets.all(size.width/30),
                                  child: SvgPicture.asset(
                                    'assets/image/arrow2.svg',
                                    height: 20.0,
                                    width: 20.0,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),]

                          ),
                          Column(
                            children: [
                              Container(
                                width: size.width/2.1,
                                padding: EdgeInsets.only(bottom:10),
                                child: Text("Jane Smith",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700),),
                              ),
                              Container(
                                width: size.width/2.1,
                                child: Text("Transfer- GenioPay Account",style: TextStyle(fontSize: 10),),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Row(children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    top: 12,
                                    right: 10
                                ),
                                child: Text("\$99.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)),
                            Container(
                                padding: EdgeInsets.only(
                                    bottom: 5,
                                    top: 5,
                                    right: 10
                                ),
                                child: Text("Awaiting Sign",style: TextStyle(fontSize: 10,color: Colors.blueAccent),)),
                          ],
                        )
                      ],)
                    ],
                  ),




                ],

              ),
            ),

          ],

        ),
      ),
    ));
  }
}
