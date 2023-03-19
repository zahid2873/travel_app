import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(3),
              height: 53,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.7)
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/swiss-alps.jpg",fit: BoxFit.cover,))),
          Container(
              padding: EdgeInsets.all(3),
              height: 53,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.7)
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/mount-logan.jpg",fit: BoxFit.cover,))),
          Container(
              padding: EdgeInsets.all(3),
              height: 53,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.7)
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network("https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/mount-fuji.jpg",fit: BoxFit.cover,))),
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.all(3),
                  height: 53,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.7)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network("https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/Mauna-Kea.jpg",fit: BoxFit.cover,))),
            Positioned(
              top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: Center(child: Text("+16",style: GoogleFonts.firaSans(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white))))
            ],
          ),

        ],
      ),
    );
  }
}
