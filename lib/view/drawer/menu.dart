import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
      width: MediaQuery.of(context).size.width * 0.50,
      height: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        color: Colors.white
      ),
      child: const Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          
          Center(child: Text('Sam sothavy'),),
          
        ],
      )
    );
  }
}