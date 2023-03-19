import 'package:flutter/material.dart';
import 'package:travelapp_design/widget/category.dart';
import 'package:travelapp_design/widget/heading.dart';
import 'package:travelapp_design/widget/textfield.dart';

import '../widget/bottom_navigation.dart';
import '../widget/explore_cities.dart';
import '../widget/popular_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.withOpacity(.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height*.2,
              width: double.infinity,
              //color: Colors.blue,
              child: HeadingClass(),
            ),
            // Container(
            //   height: size.height*.1,
            //   width: double.infinity,
            //   color: Colors.blue,
            // )
            TextFiledClass(),
            CategoryClass(),
            ExploreCities(),
            PopularCategory(),
            BottomNavigationClass(),

          ],
        ),
      ),
    );
  }
}
