import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingClass extends StatelessWidget {
  const HeadingClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                  width: 70,

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                      child: Image.network("https://i.pinimg.com/236x/75/75/b4/7575b42c133e284aa43f860804e21d4e--beards.jpg",height: 70,width: 70,)))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Welcome Back",style: GoogleFonts.firaSans(fontSize: 16,color: Colors.black54),),
                        Text(" ✋",style: TextStyle(color: Colors.yellow),)
                      ],
                    ),
                    Text("Ronald Richards",style: GoogleFonts.firaSans(fontSize: 24,fontWeight: FontWeight.w800 ,color: Colors.black),)
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)

                ),
                  child: Icon(Icons.notifications_none,size: 28,color: Colors.white,))

            ],
          )
        ],
      ),
    );
  }
}
