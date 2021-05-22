import 'package:facebook/sections/chatRoom.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/uploadSection.dart';
import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'assets.dart';
import 'sections/statusBar.dart';

class Home extends StatelessWidget {
  Widget thickdivider = Divider(
    thickness: 8,
    color: Colors.grey[300],
  );

  Widget thindivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontSize: 26,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("serach icon pressed");
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("chat icon pressed");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusBar(),
            thindivider,
            UploadSection(),
            thickdivider,
            ChatRoom(),
            thickdivider,
            StorySection(),
            thickdivider,
            PostCard(
              avatarimage: mine,
              avatarname: "Abhijith",
              time: "5h",
              postText: "Good Morning",
              postImage: ava1,
              likes: "20k",
              comment: "1k",
              share: "400",
            ),
            thickdivider,
            PostCard(
              avatarimage: mine,
              avatarname: "Abhijith",
              time: "4h",
              postText: "Rainy mood",
              postImage: c,
              likes: "400",
              comment: "323",
              share: "200",
            ),
          ],
        ),
      ),
    );
  }
}
