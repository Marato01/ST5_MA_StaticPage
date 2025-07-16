import 'package:flutter/cupertino.dart';

class Spacing {

  static SizedBox vertical(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }

  static SizedBox horizontal(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.02);
  }

}