import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class StoryBarOne extends StatelessWidget {
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
          image: AssetImage(mine),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            child: AppBarButton(
                buttonIcon: Icons.add,
                buttonAction: () {
                  print("stoty add button");
                }),
            top: 5,
            left: 5,
          ),
          Positioned(
            child: Text(
              "Add your Story",
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
