import 'package:flutter/material.dart';

import '../shared_preferences/user_preferences.dart';
import '../widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  static final UserPreferences _preferences = UserPreferences();
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _preferences.lastPage = 'home';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de Usuario'),
        backgroundColor:
            (_preferences.secondaryColor) ? Colors.teal : Colors.blue,
      ),
      drawer: const MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${_preferences.secondaryColor}'),
          const Divider(),
          Text('Género : ${_preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${_preferences.userName}'),
          const Divider(),
        ],
      ),
    );
  }
}
