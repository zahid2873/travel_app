import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCategory extends StatelessWidget {
  const PopularCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 5,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Popular Categories",style: GoogleFonts.firaSans(fontSize: 20,fontWeight: FontWeight.w800),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://static.vecteezy.com/system/resources/previews/007/901/817/original/passenger-plane-in-flight-on-a-blue-background-illustration-of-an-airplane-vector.jpg",fit: BoxFit.cover,)),
                  ),
                  Text("Flight",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://img.freepik.com/premium-vector/hotel-building-office-building-business-flat-style_199064-361.jpg?w=2000",fit: BoxFit.cover,)),
                  ),
                  Text("Hotels",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://img.lovepik.com/free_png/32/50/90/20358PIC5jb61YrDXdR7j_PIC2018.png_860.png",fit: BoxFit.cover,)),
                  ),
                  Text("Transport",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmHUF8VDs24vm0Qz_UDayilST1Wxf7wxeaW_dK-nGopYj_vF-tUDaS3y-0kTUEMJDXXCI&usqp=CAU",fit: BoxFit.cover,)),
                  ),
                  Text("Events",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
