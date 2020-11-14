import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:fitness_app/ui/widgets/activity_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class TodayActivityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Today's Activity", style: AppStyles.sectionHeading),
              FlatButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Details', style: AppStyles.sectionButton),
                    SizedBox(width: 10.w),
                    Image(
                      width: 21.w,
                      height: 8.h,
                      image: R.svg.ic_arrow_forward(width: 21.w, height: 8.h),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 124.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ActivityItem(
                image: R.svg.ic_trail_running_shoe(width: 26.w, height: 13.h),
                imageHeight: 13.h,
                label: 'STEPS',
                value: '1,228',
              ),
              ActivityItem(
                image: R.svg.ic_weight(width: 18.w, height: 18.h),
                imageHeight: 18.h,
                label: 'CALORIES',
                value: '829',
              ),
              ActivityItem(
                image: R.svg.ic_cardiogram(width: 19.w, height: 17.h),
                imageHeight: 17.h,
                label: 'BPM',
                value: '88.9',
              ),
            ],
          ),
        )
      ],
    );
  }
}
