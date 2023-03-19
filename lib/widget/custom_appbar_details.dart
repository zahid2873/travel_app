import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCalss extends StatelessWidget {
  const AppBarCalss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,top: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back,color: Color(0xFF25161A).withOpacity(.8))),
          Text("Back",style: GoogleFonts.firaSans(color: Color(0xFF25161A).withOpacity(.5),)),
        ],
      ),
    );
  }
}
