import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/colors.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class WorkoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
      child: Stack(
        children: [
          Positioned(
            left: 20.w,
            right: 20.w,
            top: 54.h,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.workoutBoxGradientStart,
                        AppColors.workoutBoxGradientEnd,
                      ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  )),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: -30,
            child: Image(
              image: R.image.person_image_1(),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 210.w,
            right: 0,
            top: 71.h,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Legs',
                        style: AppStyles.workoutText,
                      ),
                      TextSpan(
                        text: ' and\n',
                        style: AppStyles.workoutText
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'Glutes',
                        style: AppStyles.workoutText,
                      ),
                      TextSpan(
                        text: ' workout',
                        style: AppStyles.workoutText
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Image(
                      image: R.svg.ic_advanced(width: 10.w, height: 10.h),
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(width: 10.w),
                    Text('Advanced', style: AppStyles.workoutDes),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Image(
                      image: R.svg.ic_stopwatch(width: 10.w, height: 10.h),
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(width: 10.w),
                    Text('45 Min', style: AppStyles.workoutDes),
                  ],
                ),
                SizedBox(height: 10.h),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Start Workout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
