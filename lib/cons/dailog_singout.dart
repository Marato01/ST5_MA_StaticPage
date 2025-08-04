import 'package:flutter/material.dart';

class DailogSingout extends StatelessWidget {
  const DailogSingout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: const Row(
        children: [
          Icon(Icons.logout, color: Colors.redAccent),
          SizedBox(width: 10),
          Text('Log Out'),
        ],
      ),
      content: const Text(
        'Are you sure you want to log out?',
        style: TextStyle(fontSize: 16),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // Perform logout action
            print('User logged out');
            Navigator.of(context).pop();
          },
          child: const Text('Log Out'),
        ),
      ],
    );
  }
}
