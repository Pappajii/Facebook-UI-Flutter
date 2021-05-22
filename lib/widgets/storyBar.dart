import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  final String storyText;
  final String avatar;
  final String storyImage;

  StoryBar({
    this.avatar,
    this.storyText,
    this.storyImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Avatar(
              avatarName: avatar,
            ),
            top: 5,
            left: 5,
          ),
          Positioned(
            child: Text(
              storyText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            bottom: 5,
            left: 5,
          )
        ],
      ),
    );
  }
}
