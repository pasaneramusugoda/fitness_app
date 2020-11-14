import 'package:fitness_app/r.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/size_extension.dart';

enum BottomNavItems { Home, Activity, Settings, Profile }

extension BottomNavItemsExtension on BottomNavItems {
  ImageProvider get icon {
    switch (this) {
      case BottomNavItems.Home:
        return R.svg.ic_home(width: 18.0.w, height: 20.0.h);
        break;
      case BottomNavItems.Activity:
        return R.svg.ic_activity(width: 22.0.w, height: 20.0.h);
        break;
      case BottomNavItems.Settings:
        return R.svg.ic_settings(width: 20.0.w, height: 20.0.h);
        break;
      case BottomNavItems.Profile:
        return R.svg.ic_profile(width: 18.0.w, height: 20.0.h);
        break;
      default:
        return null;
        break;
    }
  }

  String get label {
    switch (this) {
      case BottomNavItems.Home:
        return 'Home';
        break;
      case BottomNavItems.Activity:
        return 'Activity';
        break;
      case BottomNavItems.Settings:
        return 'Settings';
        break;
      case BottomNavItems.Profile:
        return 'Profile';
        break;
      default:
        return null;
        break;
    }
  }
}
