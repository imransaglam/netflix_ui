import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_ui/navbar.dart';
import 'package:spotify_ui/widgets/listviewitem.dart';
import 'package:spotify_ui/widgets/listviewitem1.dart';
import 'package:spotify_ui/widgets/listviewitem2.dart';

class HomeScreen extends StatefulWidget {
 
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images=[
"assets/images/Rectangle1.png",
"assets/images/Rectangle2.png",
"assets/images/Rectangle3.png",
"assets/images/Rectangle4.png",
  ];
  final List images1=[
"assets/images/Rectangle5.png",
"assets/images/Rectangle10.png",
"assets/images/Rectangle8.png",
"assets/images/Rectangle9.png",
  ];
  final List images2=[
"assets/images/Rectangle6.png",
"assets/images/Rectangle7.png",
"assets/images/Rectangle11.png",
"assets/images/Rectangle12.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1919),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.w,
              height: 18.h,
              child: Stack(
                children: [
                   Image.asset("assets/backgroundimage.png"),
                   Positioned(top:6.h,left:28.w,child: Text("NETFLIX",style: TextStyle(color:Color(0xffFF2929),fontSize: 41.31,fontWeight: FontWeight.w700,fontFamily: 'Red Rose'),))
                ],
              ), 
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Trending",style: TextStyle(color: Colors.white,fontSize: 20.72,fontFamily: 'Red Rose'),),
            ),
            SizedBox(height: 1.h,),
            Container(
              width: 100.w,
              height:25.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: ((context, index) {
                return TrendingMovie(
                  image: images[index],
                );
              })),
            ),
            SizedBox(height: 3.h),
             Padding(
               padding: const EdgeInsets.only(left:15),
               child: Text("Netflix Originals",style: TextStyle(fontSize: 20.72,color:Colors.white,fontWeight: FontWeight.w400,fontFamily:'Red Rose' ),),
             ),
              SizedBox(height: 1.h,),
             Container(
               width: 100.w,
              height:25.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: images1.length,
                itemBuilder: ((context, index) {
                return NetflixOriginals(image1: images1[index]);
              })),
             ),
             SizedBox(height: 3.h,),
             Padding(
               padding: const EdgeInsets.only(left:15),
               child: Text("Popular on Netflix",style: TextStyle(color: Colors.white,fontSize: 20.72,fontWeight: FontWeight.w400,fontFamily: 'Red Rose'),),
             ),
             SizedBox(height: 1.h,),
             Container(
               width: 100.w,
              height:25.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: images2.length,
                itemBuilder: ((context, index) {
                return PopularonNetflix(image2: images2[index]);
              })),

             ),
          ],
        ),
      ),
      bottomNavigationBar: NavbarItem(),
    
    
    );
  }
}