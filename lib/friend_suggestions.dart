import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttercloudstoryapp/follow_flat_button.dart';
import 'package:fluttercloudstoryapp/unfollow_flat_button.dart';
import 'package:fluttercloudstoryapp/user.dart';

class FriendSuggestions extends StatefulWidget {
  @override
  _FriendSuggestionsState createState() => _FriendSuggestionsState();
}

class _FriendSuggestionsState extends State<FriendSuggestions> {
  final int t =  10;

  final List<String> _listItem = [
    'assets/rm1.jpg',
    'assets/rm2.jpg',
    'assets/rm3.jpg',
    'assets/rm1.jpg',
    'assets/rm2.jpg',
    'assets/rm3.jpg',
    'assets/rm1.jpg',
    'assets/rm2.jpg',
    'assets/rm3.jpg',
  ];

  final List<User> users = [
    User(name: "User 1", imgUrl: "assets/rm1.jpg", following: null),
    User(name: "User 2", imgUrl: "assets/rm2.jpg", following: null),
    User(name: "User 3", imgUrl: "assets/rm3.jpg", following: null),
    User(name: "User 4", imgUrl: "assets/rm1.jpg", following: null),
    User(name: "User 5", imgUrl: "assets/rm2.jpg", following: null),
    User(name: "User 6", imgUrl: "assets/rm3.jpg", following: null),
  ];

  User currUser;

  Widget getButton(bool following, User user){
    if(following){
      return UnfollowFlatButton(
        removeFollowing : (){
          setState(() {
            currUser.following.remove(user.name);
            currUser.following.forEach((f)=>print(f));
          });
        },
      );
    }
    else{
      return FollowFlatButton(
        addFollowing : (){
          setState(() {
            currUser.following.add(user.name);
            currUser.following.forEach((f)=>print(f));
          });
        },
      );
    }
  }

  @override
  void initState(){
    currUser = new User(name: "Morty", imgUrl: null, following: new HashSet());
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2/3,
                children: users.map((user) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 213,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(user.imgUrl),
                              fit: BoxFit.cover,
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              height: 25,
                              child: Center(
                                child: Text(
                                    user.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                      getButton(currUser.following.contains(user.name), user),
                    ],
                  ),
                )).toList(),
              )
          )
        ],
      ),
    );
  }
}
