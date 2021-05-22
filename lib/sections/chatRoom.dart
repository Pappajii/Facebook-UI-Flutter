import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            avatarName: mine,
          ),
          Avatar(
            avatarName: ava1,
          ),
          Avatar(
            avatarName: mine,
          ),
          Avatar(
            avatarName: ava1,
          ),
          Avatar(
            avatarName: mine,
          ),
          Avatar(
            avatarName: ava1,
          ),
          Avatar(
            avatarName: mine,
          ),
          Avatar(
            avatarName: ava1,
          ),
          Avatar(
            avatarName: mine,
          ),
          Avatar(
            avatarName: ava1,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 7,
        right: 7,
      ),
      child: OutlineButton.icon(
        onPressed: () {
          print("Chat room button pressed");
        },
        shape: StadiumBorder(),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n Room",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        borderSide: BorderSide(
          color: Colors.blue,
        ),
      ),
    );
  }
}
