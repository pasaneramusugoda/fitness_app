import 'package:fitness_app/core/enums/bottom_nav_items.dart';
import 'package:fitness_app/ui/theme/colors.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:fitness_app/ui/views/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:stacked/stacked.dart';

class BottomNavBarItem extends ViewModelWidget<MainViewModel> {
  final BottomNavItems item;

  BottomNavBarItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context, MainViewModel model) {
    final bool active = item == model.activeNav;
    return InkWell(
      onTap: () => model.onClickNavItem(item),
      child: Neumorphic(
        duration: Duration(milliseconds: 300),
        style: NeumorphicStyle(
          depth: 10.0,
          // color: active ? AppColors.background : AppColors.shadow,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0)),
          lightSource: LightSource.topLeft,
          shape: NeumorphicShape.flat,
          intensity: 0.8,
          shadowLightColor: Colors.white,
          shadowDarkColor: AppColors.shadow,
          // border: NeumorphicBorder(color: AppColors.shadow, width: 0.05)
        ),
        child: Neumorphic(
          duration: Duration(milliseconds: 300),
          style: NeumorphicStyle(
            depth: active ? -4.0 : 4.0,
            color: AppColors.background,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0)),
            lightSource: LightSource.topLeft,
            intensity: 0.6,
            shadowLightColorEmboss: Colors.white,
            shadowDarkColorEmboss: AppColors.shadow,
          ),
          child: Container(
            width: 70.0.w,
            height: 70.0.h,
            color: AppColors.background,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: item.icon,
                  width: 20.0.w,
                  color: active ? AppColors.primary : Colors.black45,
                ),
                SizedBox(height: 10.0.h),
                AnimatedDefaultTextStyle(
                  child: Text(
                    item.label,
                  ),
                  style: active
                      ? AppStyles.bottomNavItemTextActive
                      : AppStyles.bottomNavItemText,
                  curve: Curves.linearToEaseOut,
                  duration: Duration(milliseconds: 300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
