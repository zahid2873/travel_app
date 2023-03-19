import 'package:flutter/material.dart';

class TextFiledClass extends StatelessWidget {
  const TextFiledClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          //border: InputBorder(borderSide: BorderSide(color: Colors.white,width: 1)),
          hintText: "Discover a City",
          prefixIcon: Icon(Icons.search,size: 24,color: Colors.deepOrangeAccent.withOpacity(.8),),
          suffixIcon: Icon(Icons.menu,size: 24,color: Colors.black.withOpacity(.8),),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(50)
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(width: 2,color: Colors.white),
            //     borderRadius: BorderRadius.circular(0)
            // ),
          filled: true,
          fillColor: Colors.white.withOpacity(.8),
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 25),

        ),
        //cursorColor: Colors.black,
        showCursor: false,
      ),
    );
  }
}
