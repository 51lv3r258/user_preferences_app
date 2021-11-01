import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      drawer: const MenuWidget(),
      body: const Center(child: Text('Ajustes Page')),
    );
  }
}
