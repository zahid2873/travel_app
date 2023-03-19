import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp_design/model/model_place.dart';
import 'package:travelapp_design/screen/details_page.dart';

class ExploreCities extends StatefulWidget {
  const ExploreCities({Key? key}) : super(key: key);

  @override
  State<ExploreCities> createState() => _ExploreCitiesState();
}

class _ExploreCitiesState extends State<ExploreCities> {

  List exploreCategoryList = ["All","Popular","Recommended","Most Viewed","Recommended"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Explore Cities",style: GoogleFonts.firaSans(fontSize: 28,fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.only(top: 8),
            width: double.infinity,
            height: 30,
            child: ListView.separated(itemBuilder: (context,index)=>Container(
              child: Text("${exploreCategoryList[index]}",style: GoogleFonts.firaSans(fontSize: 14,fontWeight: exploreCategoryList[index]=="Popular"?FontWeight.bold:null, color: exploreCategoryList[index]=="Popular"?Colors.black:Color(0xFF25161A).withOpacity(.5)),),
            ),
                separatorBuilder: (context,index)=>SizedBox(width: 20,),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: exploreCategoryList.length),
          ),

          Container(
            //width: double.infinity,
            height: 200,
            //color: Colors.blue,
            child: ListView.separated(itemBuilder: (context,index)=>GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DescriptionPage(placeInfo: placeInfo[index],)));
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        color: Colors.grey,
                        elevation: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                            child: Image.network("${placeInfo[index].img}",height: 120,width: 200,fit: BoxFit.cover,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${placeInfo[index].name}",style: GoogleFonts.firaSans(fontSize: 18,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(Icons.star_border,color:Color(0xFF25161A).withOpacity(.5),size: 16,),
                            Text("${placeInfo[index].rating}",style: GoogleFonts.firaSans(fontSize: 14,color:Color(0xFF25161A).withOpacity(.5)),)
                          ],
                        )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,size: 16,),
                              Text("${placeInfo[index].location}",style: GoogleFonts.firaSans(fontSize: 14,color:Color(0xFF25161A).withOpacity(.5)),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("\$${placeInfo[index].cost}",style: GoogleFonts.firaSans(fontSize: 14,color:Color(0xFFC05E2B),fontWeight: FontWeight.bold),),
                              Text("\/person",style: GoogleFonts.firaSans(fontSize: 14,color:Color(0xFF25161A).withOpacity(.5)),),

                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),

              ),
            ),

                separatorBuilder: (context,index)=>SizedBox(width: 20,),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: placeInfo.length),
          )

        ],
      ),
    );
  }
}
