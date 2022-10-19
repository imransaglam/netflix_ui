import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      padding: EdgeInsets.only(left: 10),
      width: 100,
      height: 150,
      child:Image.asset(widget.image1),
   
    );
  }
}