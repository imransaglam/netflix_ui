import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/widgets/listviewitem.dart';
import 'package:spotify_ui/widgets/listviewitem1.dart';

class HomeScreen extends StatefulWidget {
 
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images=[
"assets/Rectangle1.png",
"assets/Rectangle2.png",
"assets/Rectangle3.png",
"assets/Rectangle4.png",
  ];
  final List images1=[
"assets/Rectangle5.png",
"assets/Rectangle8.png",
"assets/Rectangle9.png",
"assets/Rectangle10.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 428,
            height: 121,
            child: Stack(
              children: [
                 Image.asset("assets/backgroundimage.png"),
                 Positioned(top:35,left:110,child: Text("NETFLIX",style: TextStyle(color:Color(0xffFF2929),fontSize: 41.31,fontWeight: FontWeight.bold),))
              ],
            ), 
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Trending",style: TextStyle(color: Colors.white,fontSize: 20.72),),
          ),
          Container(
            width: 460,
            height:150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: ((context, index) {
              return TrendingMovie(
                image: images[index],

              );
            })),
          ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left:15),
             child: Text("Netflix Originals",style: TextStyle(fontSize: 20.72,color:Colors.white,fontWeight: FontWeight.w400),),
           ),
           Container(
             width: 460,
            height:150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images1.length,
              itemBuilder: ((context, index) {
              return NetflixOriginals(image1: images1[index]);
            })),

           )
        ],
      ),
    
    
    );
  }
}