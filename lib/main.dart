import 'package:flutter/material.dart';

import 'package:fluttercloudstoryapp/friend_suggestions.dart';

void main() => runApp(MaterialApp(
  home: MyHome(),
));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find People"),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
          child: FriendSuggestions(),
      ),
    );
  }
}

