import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_ui/details.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
   return ResponsiveSizer(builder: (context,orientation,screenType){
return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: DetailsScreen(),

);
   },);
       
    }
   
 
}

