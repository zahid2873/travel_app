import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:travelapp_design/screen/home_page.dart';
import 'package:page_transition/page_transition.dart';


class SwipePage extends StatefulWidget {
  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  // SwipePage({Key? key}) : super(key: key);
  late Size size;
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
           Image.asset("images/swipe_pageBG.jpg",height: double.infinity,fit: BoxFit.cover,),
          Positioned(
            top: 80,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore Beauty \n Of Journey",style: GoogleFonts.firaSans(fontSize: 44,fontWeight: FontWeight.w800),),
                  Text("Everything you can imagine, is here",style: GoogleFonts.firaSans(fontSize: 14,color: Colors.black54),),
                ],
              )),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: Text("Privacy Policy",style: GoogleFonts.firaSans(color: Colors.white),),
            ),
          ),
          
          Positioned(
            bottom: 45,
            left: 0,
            right: 0,
            child: SwipeableButtonView(onFinish: ()async{
              await Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: HomePage()));

              //TODO: For reverse ripple effect animation
              setState(() {
                isFinished = false;
              });
            },
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 0), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                activeColor: Colors.black.withOpacity(.3),
                isFinished: isFinished,
                buttonWidget:Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Image.asset('images/swipe.png',height: 30,width: 30,)
                ),

                disableColor: Colors.black,
                buttonColor: Colors.black,
                buttonText: "Swipe to Explore Now"

            ),
          )

        ],
      ),
    );
  }
}
