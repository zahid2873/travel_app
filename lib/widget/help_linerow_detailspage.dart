import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpLineDetailsPage extends StatelessWidget {
  const HelpLineDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
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
                        child: Image.network("https://thumbs.dreamstime.com/b/map-icon-pointer-red-42591257.jpg",fit: BoxFit.cover,)),
                  ),
                  Text("Maps",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blue.withOpacity(.5)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://cdn-icons-png.flaticon.com/512/5776/5776883.png",fit: BoxFit.cover,)),
                  ),
                  Text("Guide",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.black12.withOpacity(.5)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network("https://cdn-icons-png.flaticon.com/512/2490/2490365.png",fit: BoxFit.cover,)),
                  ),
                  Text("4 day 3 night",style: GoogleFonts.firaSans(fontSize: 14,color:Color(0xFF25161A).withOpacity(.5)),)
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
                        child: Image.network("https://img.freepik.com/premium-vector/romantic-dinner-cartoon-man-woman-table_81522-3076.jpg?w=2000",fit: BoxFit.cover,)),
                  ),
                  Text("Dinner",style: GoogleFonts.firaSans(fontSize: 16,color:Color(0xFF25161A).withOpacity(.5)),)
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 15),
            height: 2,
            width: double.infinity,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}
