import 'package:flutter/material.dart';

class FollowFlatButton extends StatelessWidget {
  final Function addFollowing;
  FollowFlatButton({this.addFollowing});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        color: Colors.redAccent,
        onPressed: addFollowing,
        child: Container(
            height: 50,
            width: 180,
            child: Center(
                child: Text(
                    "Follow",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )
            )
        ),
      ),
    );
  }
}
