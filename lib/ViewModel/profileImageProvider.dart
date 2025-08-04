import 'package:flutter/material.dart';

class ProfileImageProvider with ChangeNotifier {
  String _profileImagePath ='assets/images/profile.jpg';

  String get profileImagePath => _profileImagePath;

  void setProfileImage(String newPath) {
    _profileImagePath = newPath;
    notifyListeners();
  }
}