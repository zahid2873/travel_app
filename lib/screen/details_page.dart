import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp_design/model/model_place.dart';

import '../widget/custom_appbar_details.dart';
import '../widget/help_linerow_detailspage.dart';
import '../widget/stack_image.dart';

class DescriptionPage extends StatefulWidget {
  //const DescriptionPage({Key? key}) : super(key: key);
  ModelPlace ? placeInfo;
  DescriptionPage({this.placeInfo});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 60),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color:Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
        ),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            AppBarCalss(),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                      child: Image.network("${widget.placeInfo!.img}",fit: BoxFit.cover,)),
                ),
                Positioned(
                  top: 40,
                  right: 40,
                  child: Container(
                    height: 260,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: StackImage(),
                  ),
                ),
              ],
            ),
            HelpLineDetailsPage(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("${widget.placeInfo!.name}",style: GoogleFonts.firaSans(fontSize: 28,fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_border,color:Color(0xFF25161A).withOpacity(.5),size: 18,),
                          Text("${widget.placeInfo!.rating}",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),),
                          Text(" (${widget.placeInfo!.number_review}k review)",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,size: 18,),
                          Text("${widget.placeInfo!.location}",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.directions_outlined,size: 18,color: Color(0xFFC05E2B),),
                          Text("Map Direction",style: GoogleFonts.firaSans(fontSize: 16,color: Color(0xFFC05E2B)))

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Description",style: GoogleFonts.firaSans(fontSize: 20,fontWeight: FontWeight.bold)),
            ),

            Container(
              padding: EdgeInsets.only(left: 20),
                height: 100,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.placeInfo!.description}",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 160,
                   // color: Colors.blue,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      //color: Colors.blue,
                        border: Border.fromBorderSide(BorderSide(color: Color(0xFFC05E2B),width: 2))
                    ),
                    child: Center(child: Text("\$${widget.placeInfo!.cost}\/person",style: GoogleFonts.firaSans(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFFC05E2B)))),
                  ),
                  Container(
                    height: 70,
                    width: 160,
                   // color:Colors.black
                      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                       color: Color(0xFFC05E2B),
            ),
                    child:Align(
                      alignment: Alignment.center,
                        child: Text("Book Now",style: GoogleFonts.firaSans(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white))),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
