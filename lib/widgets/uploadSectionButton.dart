import 'package:flutter/material.dart';

class UploadSectionButton extends StatelessWidget {
  final IconData uploadIcon;
  final String uploadText;
  final void Function() uploadFunction;
  final Color uploadColor;

  UploadSectionButton({
    this.uploadIcon,
    this.uploadText,
    this.uploadFunction,
    this.uploadColor,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: uploadFunction,
      icon: Icon(
        uploadIcon,
        color: uploadColor,
      ),
      label: Text(
        uploadText,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
