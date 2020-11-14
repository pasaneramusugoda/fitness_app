import 'package:fitness_app/core/enums/bottom_nav_items.dart';
import 'package:fitness_app/ui/views/activity/activity_view.dart';
import 'package:fitness_app/ui/views/home/home_view.dart';
import 'package:fitness_app/ui/views/profile/profile_view.dart';
import 'package:fitness_app/ui/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  BottomNavItems _activeNav;

  BottomNavItems get activeNav => _activeNav;

  set activeNav(BottomNavItems activeNav) {
    _activeNav = activeNav;
    notifyListeners();
  }

  Widget _activeView;

  Widget get activeView => _activeView;

  set activeView(Widget activeView) {
    _activeView = activeView;
    notifyListeners();
  }

  void init() => onClickNavItem(BottomNavItems.Home);

  void onClickNavItem(BottomNavItems item) {
    activeNav = item;

    switch (item) {
      case BottomNavItems.Home:
        activeView = HomeView(
          key: Key('home'),
        );
        break;
      case BottomNavItems.Activity:
        activeView = ActivityView(
          key: Key('activity'),
        );
        break;
      case BottomNavItems.Settings:
        activeView = SettingsView(
          key: Key('settings'),
        );
        break;
      case BottomNavItems.Profile:
        activeView = ProfileView(
          key: Key('profile'),
        );
        break;
    }
  }
}
