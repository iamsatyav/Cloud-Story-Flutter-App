import 'dart:collection';

class User{
  String name;
  String imgUrl;
  HashSet<String> following;

  User({this.name, this.imgUrl, this.following});
}