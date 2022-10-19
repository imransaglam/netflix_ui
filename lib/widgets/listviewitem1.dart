import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NetflixOriginals extends StatefulWidget {
  final String image1;
  const NetflixOriginals({super.key, required this.image1});

  @override
  State<NetflixOriginals> createState() => _NetflixOriginalsState();
}

class _NetflixOriginalsState extends State<NetflixOriginals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1.w),
      child:Image.asset(widget.image1),
   
    );
  }
}