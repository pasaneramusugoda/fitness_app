import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'PROFILE',
          style: TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}
