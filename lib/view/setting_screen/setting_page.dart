import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.limeAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Notifications'),
              value: false, // Placeholder value
              onChanged: (value) {
                print('Notifications: $value');
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Sound'),
              value: false,
              onChanged: (value) {
                print('Sound: $value');
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Vibrate'),
              value: false,
              onChanged: (value) {
                print('Vibrate: $value');
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Auto-Update'),
              value: false,
              onChanged: (value) {
                print('Auto-Update: $value');
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Data Saver'),
              value: false,
              onChanged: (value) {
                print('Data Saver: $value');
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: SwitchListTile(
              title: const Text('Sync Data'),
              value: false,
              onChanged: (value) {
                print('Sync Data: $value');
              },
            ),
          ),
        ],
      ),
    );
  }
}