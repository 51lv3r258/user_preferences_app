import 'package:flutter/material.dart';

import '../shared_preferences/user_preferences.dart';
import '../widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  static final UserPreferences preferences = UserPreferences();
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de Usuario'),
      ),
      drawer: const MenuWidget(),
      body: Column(
        children: [
          Text('Color secundario'),
          const Divider(),
          Text('Género : ${preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario'),
          const Divider(),
        ],
      ),
    );
  }
}
