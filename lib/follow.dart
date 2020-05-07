import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: Colors.red,
      ),
      child: Center(
        child: Text(
          "FOLLOW",
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
