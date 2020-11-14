import 'package:fitness_app/r.g.dart';
import 'package:fitness_app/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

import 'daily_activity_view.dart';
import 'today_activity_view.dart';
import 'workout_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 62.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10.0.h),
            Text('Hello Pasan!', style: AppStyles.appBarTitleWelcome),
            SizedBox(height: 10.0.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Find A ',
                    style: AppStyles.appBarTitle.copyWith(color: Colors.black),
                  ),
                  TextSpan(text: 'Workout', style: AppStyles.appBarTitle),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: ImageIcon(R.svg.ic_search(width: 20.0.w, height: 20.0.h)),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                WorkoutView(),
                SizedBox(height: 52.h),
                TodayActivityView(),
                SizedBox(height: 20.h),
                DailyActivityView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
