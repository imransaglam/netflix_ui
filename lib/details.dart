import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_ui/widgets/icons.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
   List <String> iconsitems=[
    "assets/images/Vector1.png",
    "assets/images/Vector3.png",
    "assets/images/Vector2.png",
   
  ];
  List <String> icontexts=[
    "My List",
    "Like",
    "Share",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(27, 25, 25, 1),
       body:Column(
        children: [
          Container(
          width: MediaQuery.of(context).size.width,
         height: 398,
         //color: Colors.red,
         child: Stack(
          children: [
            Container(child: Image.asset("assets/images/backgroundimage2.png")),
            Container(
                      width: 428,height: 258,
                      decoration: BoxDecoration(
                        gradient:LinearGradient(
                          colors: [
                            Color(0xff5C5B5B).withOpacity(0.73),
                            Colors.white.withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter
                          )
                      ),
                    ),
            Positioned(left:30,top:180,child: Image.asset("assets/images/Rectangle13.png")),
            Positioned(
              left:190,
              top: 300,
              child: Container(
               // color: Colors.amber,
                width: 186,
                height: 52.36,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: iconsitems.length,
                  itemBuilder: ((context, index) {
                    return IconsItem(iconsitem: iconsitems[index], textitem: icontexts[index]);
                  
                })),
              ),
            )
            
          ],
          ),
           ),
           Padding(
             padding: const EdgeInsets.only(left:25,right: 25,top:10),
             child: Container(
              width: 380,
              height: 55,
              decoration: BoxDecoration(
                color:Color(0xffE32727).withOpacity(1.0),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/images/vectoricon.png",height: 35,width: 35,),
                  ),
                  Text(" Play",style: TextStyle(color: Colors.white,fontSize: 29.86,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),)
                ],
              ),
             ),
           )
        ],
       
       )
       
    );
  }
}