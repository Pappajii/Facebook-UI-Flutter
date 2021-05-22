import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyBar.dart';
import 'package:facebook/widgets/storyBar1.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryBarOne(),
          StoryBar(
            storyText: "Abhijith",
            avatar: mine,
            storyImage: ava1,
          ),
          StoryBar(
            storyText: "ABHi",
            avatar: ava1,
            storyImage: mine,
          ),
          StoryBar(
            storyText: "Abhijith",
            avatar: ava1,
            storyImage: mine,
          ),
          StoryBar(
            storyText: "Abhijith",
            avatar: mine,
            storyImage: ava1,
          ),
          StoryBar(
            storyText: "Abhijith",
            avatar: ava1,
            storyImage: mine,
          ),
        ],
      ),
    );
  }
}
