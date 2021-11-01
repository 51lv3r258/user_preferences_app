import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
          ),
          ListTile(
            leading: const Icon(
              Icons.party_mode,
              color: Colors.blue,
            ),
            title: const Text('Party Mode'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.blue,
            ),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: const Text('Settings'),
              onTap: () => Navigator.pushReplacementNamed(context, 'settings')),
        ],
      ),
    );
  }
}
