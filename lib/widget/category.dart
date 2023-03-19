import 'package:flutter/material.dart';
import 'package:travelapp_design/model/mode_category.dart';

class CategoryClass extends StatefulWidget {
  const CategoryClass({Key? key}) : super(key: key);

  @override
  State<CategoryClass> createState() => _CategoryClassState();
}

class _CategoryClassState extends State<CategoryClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:25 ,top: 15),
      height: 115,
      //width: 200,
     // color: Colors.blue,
      child: ListView.separated(itemBuilder: (context,index)=>Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          color: categoryList[index].isClicked!? Color(0xFFC05E2B):Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(

              height: 60,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black54
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.network("${categoryList[index].img}",fit: BoxFit.cover,))),
            Text("${categoryList[index].name}"),
          ],
        ),
      ), separatorBuilder: (context,index)=>SizedBox(width: 20,height: 20,),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categoryList.length),
    );
  }
}
