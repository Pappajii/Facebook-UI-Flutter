import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarName;

  Avatar({
    this.avatarName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 7,
            right: 7,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              avatarName,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 4,
          bottom: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                )),
          ),
        )
      ],
    );
  }
}
