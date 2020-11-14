import 'package:fitness_app/core/enums/bottom_nav_items.dart';
import 'package:fitness_app/ui/widgets/bottom_nav_bar/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      color: Colors.transparent,
      notchMargin: 0.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavBarItem(item: BottomNavItems.Home),
            BottomNavBarItem(item: BottomNavItems.Activity),
            BottomNavBarItem(item: BottomNavItems.Settings),
            BottomNavBarItem(item: BottomNavItems.Profile),
          ],
        ),
      ),
    );
  }
}
