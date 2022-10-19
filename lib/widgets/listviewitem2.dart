import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PopularonNetflix extends StatefulWidget {
  final String image2;
  const PopularonNetflix({super.key, required this.image2});

  @override
  State<PopularonNetflix> createState() => _PopularonNetflixState();
}

class _PopularonNetflixState extends State<PopularonNetflix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1.w),
      child: Image.asset(widget.image2),
    );
  }
}