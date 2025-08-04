import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:static_page/cons/profileDataInfo.dart';
import 'package:static_page/ViewModel/profileImageProvider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    DataInfo dataInfo = DataInfo();
    final profileData = dataInfo.profileData;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.limeAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Consumer<ProfileImageProvider>(
                builder: (context, profileImageProvider, child) {
                  return CircleAvatar(
                    radius: 40, // Reduced for better fit
                    backgroundImage: AssetImage(profileImageProvider.profileImagePath),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              profileData['Name']!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const Icon(Icons.email),
              title: Text(profileData['Email']!),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const Icon(Icons.phone),
              title: Text(profileData['Phone']!),
            ),
          ),
        ],
      ),
    );
  }
}