import 'package:flutter/material.dart';

class BottomNavigationClass extends StatelessWidget {
  const BottomNavigationClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10,right: 20,left: 20),
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFFECDBCC),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFC05E2B),
                  child: Icon(Icons.home,color: Colors.white,)),
              Icon(Icons.cloud_circle_outlined,color: Color(0xFF25161A).withOpacity(.5),),
              Icon(Icons.map,color: Color(0xFF25161A).withOpacity(.5),),
              Icon(Icons.favorite_border,color:Color(0xFF25161A).withOpacity(.5)),
              Icon(Icons.person_outline,color: Color(0xFF25161A).withOpacity(.5),)
            ],
          ),
        ),
        Positioned(
          bottom: 1,
          left: 68,
          child: Container(
            height: 16,
            width: 18,
            decoration: BoxDecoration(
              color: Color(0xFFC05E2B),
              borderRadius: BorderRadius.only(topRight: Radius.circular(17),topLeft: Radius.circular(17),)
            ),
          ),
        )
      ],
    );
  }
}
