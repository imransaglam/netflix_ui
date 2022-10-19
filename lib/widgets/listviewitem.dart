import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrendingMovie extends StatefulWidget {
  final String image;
  

  const TrendingMovie({super.key, required this.image});

  @override
  State<TrendingMovie> createState() => _TrendingMovieState();
}

class _TrendingMovieState extends State<TrendingMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: 100,
      height: 150,
      child: Image.asset(widget.image),
    );
  }
}