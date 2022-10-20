import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconsItem extends StatefulWidget {
  final String iconsitem;
  final String textitem;
  const IconsItem({super.key, required this.iconsitem, required this.textitem});

  @override
  State<IconsItem> createState() => _IconsItemState();
}

class _IconsItemState extends State<IconsItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          //color:Colors.green,
          width: 63,
          height: 40,
          child: Image.asset(widget.iconsitem)),
          Text(widget.textitem,style: TextStyle(fontSize: 10.29,color: Colors.white,fontFamily: 'Roboto'),)
      ],
    );
  }
}