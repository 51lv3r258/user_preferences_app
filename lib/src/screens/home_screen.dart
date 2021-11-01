import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferencias de Usuario'),
      ),
      drawer: const MenuWidget(),
      body: Column(
        children: const [
          Text('Color secundario'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de usuario'),
          Divider(),
        ],
      ),
    );
  }
}
