import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_ui/widgets/icons.dart';
import 'package:spotify_ui/widgets/personitem.dart';

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
  List<String> personalitems=[
    "assets/images/Ellipse1.png",
    "assets/images/Ellipse2.png",
    "assets/images/Ellipse3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(27, 25, 25, 1),
       body:SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            width: MediaQuery.of(context).size.width,
           height: 398,
           //color: Colors.red,
           child: Stack(
            children: [
              Container(child: Image.asset("assets/images/backgroundimage2.png")),
              Container(
                        width: 428,height: 257,
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
               padding: const EdgeInsets.only(left:30,right: 30,top:10),
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
                    Text(" Play",style: TextStyle(color: Colors.white,fontSize: 29.86,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),),
                    
                  ],
                ),
               ),
             ),
             SizedBox(height: 15,),
             Padding(
               padding: const EdgeInsets.only(left:45),
               child: Container(
                        width: 330,
                        height: 100,
                        child: Text("Transformers is a series of American science fiction action films based on the Transformers franchise, which began in the 1980s. ",
                        style: TextStyle(color: Colors.white,fontSize: 18.99,),),
                      ),
             ),
                    Padding(
                      padding: const EdgeInsets.only(left:30,top:10),
                      child: Row(
                        children: [
                          Container(
                            width: 206,
                            height: 50,
                            //color: Colors.green,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:personalitems.length ,
                              itemBuilder: ((context, index) {
                              return PersonItem(personalitem: personalitems[index]);
                            })),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20),
                            child: Stack(
                              children: [
                                Container(
                                width: 52,height: 52,
                                //color: Colors.amber,
                                child: Image.asset("assets/images/Ellipse4.png")),
                                Container(
                                width: 52,height: 52,
                                //color: Colors.amber,
                                child: Image.asset("assets/images/Group.png")),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top:10,left: 30),
                      child: Text("Trailers & more",style: TextStyle(color:Colors.white,fontSize: 17.6),),
                    ),
                    
                    Stack(
                      children: [
                      Container(
                        width: 428,
                        height: 20,
                      ),
                      Positioned(
                        left: 37,
                        child: Image.asset("assets/images/Rectangle19.png")),
                       Positioned(
                        top: 4,
                        child: Image.asset("assets/images/Line1.png")),
                      ],
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30,top: 15),
                      child: Container(
                        width: 382,
                        height: 159,
                        child: Image.asset("assets/images/Rectangle15.png"),
                      ),
                    )
                    
                   
                    
          ],
         
         ),
       )
       
    );
  }
}