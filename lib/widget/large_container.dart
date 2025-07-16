import 'package:flutter/material.dart';

class LargeContainer extends StatelessWidget {

  final String imagePath;
  const LargeContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.limeAccent
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
