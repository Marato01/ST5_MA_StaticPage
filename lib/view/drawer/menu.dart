import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:static_page/cons/menuList.dart';

import '../../ViewModel/profileImageProvider.dart';
import '../../cons/dailog_singout.dart';
import '../profile_screen//profile_page.dart';
import '../setting_screen/setting_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MenuList menuList = MenuList();
    final menu = menuList.menuItems;

    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
      width: MediaQuery.of(context).size.width * 0.50,
      height: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Consumer<ProfileImageProvider>(
            builder: (context, profileImageProvider, child) {
              return CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profileImageProvider.profileImagePath),
              );
            },
          ),
          const Center(child: Text('Sam sothavy')),
          Expanded(
            child: ListView.builder(
              itemCount: menu.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(menu[index]['icon']),
                  title: Text(menu[index]['title']),
                  onTap: () {
                    switch (menu[index]['title']) {
                      case 'Profile':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProfilePage()),
                        );
                        break;
                      case 'Settings':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SettingsPage()),
                        );
                        break;
                      case 'Logout':
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => const DailogSingout(),
                        );
                        break;
                      default:
                        print('Unknown menu item: ${menu[index]['title']}');
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}