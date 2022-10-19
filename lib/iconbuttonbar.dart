import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IconButtonBar extends StatelessWidget {
  final IconData iconn;
  final bool selectedd;
  final Function() onPressedd;
  const IconButtonBar({super.key, required this.iconn, required this.selectedd, required this.onPressedd});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressedd, 
        icon: Icon(iconn,
        size: 8.w,color: selectedd?Colors.red:Colors.white,)),

    );
  }
}