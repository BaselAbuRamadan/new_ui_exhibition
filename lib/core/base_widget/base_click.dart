import 'package:flutter/material.dart';

Widget baseClick({
  Function? onTap,
  double? height ,
  double? width,
  double? BorderWidth,
  Color? color ,
  icon,icons,
  Color? borderColor,
  colorclick,
  FontWeight,
  double radius = 4.0,
  String? title,
  double? sizeTitle,
  Color colorTitle = Colors.white })
{
  return GestureDetector(
    onTap: () {
      onTap!();
    },
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor==null?Colors.transparent:borderColor,width: BorderWidth!),
          borderRadius: BorderRadius.all(Radius.circular(

              radius


          ),

      //         borderRadius: BorderRadius.only(
      //         topLeft:  Radius.circular(radius),
      //     // topRight:  Radius.circular(radius),
      //     // bottomRight:  Radius.circular(radius),
      //     bottomLeft:  Radius.circular(radius),
      // ),

          )   ),


        child: Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icons==true?  Row(children: [
                Image.asset(icon,width: 15,height: 15,color: colorclick,),
                SizedBox(width: 4,),
              ],):Container(),

            Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: sizeTitle,
                  fontFamily: "IBM Plex Sans",
                  fontWeight:FontWeight,
                  color: colorTitle),
            ),


        ])]),
     ),
  ));
}
