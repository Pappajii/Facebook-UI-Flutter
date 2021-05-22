import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatarimage;
  final String avatarname;
  final String time;
  final String postText;
  final String postImage;
  final String likes;
  final String comment;
  final String share;

  PostCard(
      {this.avatarimage,
      this.avatarname,
      this.time,
      this.postText,
      this.postImage,
      this.likes,
      this.comment,
      this.share});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headerSection(),
          titleSection(),
          postSection(),
          footerSection(),
        ],
      ),
    );
  }

  Widget postSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              SizedBox(width: 8),
              Text(likes),
            ],
          )),
          Container(
            child: Row(
              children: [
                Text(comment),
                Text("Comments"),
                SizedBox(width: 5),
                Text(share),
                Text("Shares"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Center(
        child: Text(
          postText,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800]),
        ),
      ),
    );
  }

  Widget headerSection() {
    return ListTile(
      leading: Avatar(
        avatarName: avatarimage,
      ),
      title: Row(
        children: [
          Text(avatarname),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.verified,
            color: Colors.blue,
            size: 15,
          )
        ],
      ),
      subtitle: Row(
        children: [
          Text(time),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 15,
          )
        ],
      ),
      trailing: Icon(Icons.more_horiz),
    );
  }
}
