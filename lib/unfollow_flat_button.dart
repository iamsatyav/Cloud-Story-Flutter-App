import 'package:flutter/material.dart';

class UnfollowFlatButton extends StatelessWidget {
  final Function removeFollowing;
  UnfollowFlatButton({this.removeFollowing});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          side: BorderSide(color: Colors.redAccent),
        ),
        color: Colors.white,
        onPressed: removeFollowing,
        child: Container(
            height: 50,
            width: 180,
            child: Center(
                child: Text(
                  "Unfollow",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.redAccent,
                  ),
                )
            )
        ),
      ),
    );
  }
}
