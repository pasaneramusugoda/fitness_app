import 'package:fitness_app/ui/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'main_view_model.dart';

class MainView extends ViewModelBuilderWidget<MainViewModel> {
  @override
  Widget builder(BuildContext context, model, Widget child) {
    ScreenUtil.init(context,
        designSize: Size(414, 896), allowFontScaling: true);

    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: model.activeView,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  @override
  viewModelBuilder(BuildContext context) => MainViewModel();

  @override
  void onViewModelReady(MainViewModel model) => model.init();
}
