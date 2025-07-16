import 'package:flutter/material.dart';

class VerticalContainer extends StatelessWidget {
  final String imagePath;
  const VerticalContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
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
