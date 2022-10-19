import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'iconbuttonbar.dart';

class NavbarItem extends StatefulWidget {
  const NavbarItem({super.key});


  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 8.h,
          width: MediaQuery.of(context).size.width,
          child: Padding(padding: EdgeInsets.only(left: 5.w,right: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButtonBar(
                iconn:Icons.home,
                selectedd:_selectedIndex==0,
                onPressedd:(){
                  setState(() {
                    _selectedIndex=0;
                  });
                },
              ),
                IconButtonBar(
                iconn:Icons.save_alt_rounded ,
                selectedd:_selectedIndex==1,
                onPressedd:(){
                  setState(() {
                    _selectedIndex=1;
                  });
                },
              ),
                IconButtonBar(
                iconn:Icons.search,
                selectedd:_selectedIndex==2,
                onPressedd:(){
                  setState(() {
                    _selectedIndex=2;
                  });
                },
              ),
                IconButtonBar(
                iconn:Icons.circle_notifications_sharp ,
                selectedd:_selectedIndex==3,
                onPressedd:(){
                  setState(() {
                    _selectedIndex=3;
                  });
                },
              ),
                IconButtonBar(
                iconn:Icons.notes_sharp,
                selectedd:_selectedIndex==4,
                onPressedd:(){
                  setState(() {
                    _selectedIndex=4;
                  });
                },
              ),


            ],
          ),
          ),
        ),
      ),
    );
  }
}