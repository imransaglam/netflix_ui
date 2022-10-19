import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


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
     padding: EdgeInsets.only(left: 1.w),
      child: Image.asset(widget.image),
    );
  }
}