import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:fitness_app/ui/widgets/activity_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class DailyActivityView extends StatelessWidget {
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
              Text("Daily Activity", style: AppStyles.sectionHeading),
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
          height: 145.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ActivityItem(
                label: 'MON',
                value: '08',
              ),
              ActivityItem(
                label: 'SUN',
                value: '07',
              ),
              ActivityItem(
                label: 'SAT',
                value: '06',
              ),
              ActivityItem(
                label: 'FRI',
                value: '05',
              ),
              ActivityItem(
                label: 'THU',
                value: '04',
              ),
            ],
          ),
        )
      ],
    );
  }
}
