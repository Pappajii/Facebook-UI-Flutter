import 'package:facebook/widgets/uploadSectionButton.dart';
import 'package:flutter/material.dart';

class UploadSection extends StatelessWidget {
  Widget vertDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          UploadSectionButton(
            uploadIcon: Icons.video_call,
            uploadText: "Live",
            uploadFunction: () {
              print("live button");
            },
            uploadColor: Colors.red,
          ),
          vertDivider,
          UploadSectionButton(
            uploadIcon: Icons.photo_library_rounded,
            uploadText: "Photo",
            uploadFunction: () {
              print("photo button");
            },
            uploadColor: Colors.green,
          ),
          vertDivider,
          UploadSectionButton(
            uploadIcon: Icons.video_call,
            uploadText: "Room",
            uploadFunction: () {
              print("Room button");
            },
            uploadColor: Colors.indigo,
          ),
        ],
      ),
    ));
  }
}
