import 'package:flutter/cupertino.dart';
import 'package:jobbies_app/models/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
