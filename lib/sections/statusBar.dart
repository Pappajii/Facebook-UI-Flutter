import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        avatarName: mine,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind ?",
          hintStyle: TextStyle(
            color: Colors.grey[600],
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
