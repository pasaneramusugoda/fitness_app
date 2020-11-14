import 'package:fitness_app/ui/theme/colors.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/size_extension.dart';

class ActivityItem extends StatelessWidget {
  final ImageProvider image;
  final double imageHeight;
  final String label;
  final String value;

  const ActivityItem(
      {Key key, this.image, this.imageHeight, this.label, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: image != null ? 141.w : 75.w,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 10.0,
          color: AppColors.background,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0)),
          lightSource: LightSource.topLeft,
          shape: NeumorphicShape.flat,
          intensity: 0.8,
          shadowLightColor: Colors.white,
          shadowDarkColor: AppColors.shadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: image != null
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              if (image != null)
                Image(
                  image: image,
                  width: 26.w,
                  height: imageHeight,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              if (image != null) SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: image != null
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: AppStyles.activityLabel,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    value,
                    style: AppStyles.activityValue,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
