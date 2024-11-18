class MyUser {
  final String uid;

  MyUser(
      {required this.uid}); //Requred indicates that a variable has to be set.
}

class UserData {
  final String? uid;
  final String? name;
  final String? sugars;
  final int? strength;
  UserData({this.uid, this.name, this.sugars, this.strength});
}
