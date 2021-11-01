import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preferences_app/src/shared_preferences/user_preferences.dart';

import '../widgets/menu_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _secondaryColor;
  late int _gender;
  // String _name = 'Pedro';

  late TextEditingController _textEditingController;

  final _preferences = UserPreferences();

  @override
  void initState() {
    _preferences.lastPage = 'settings';
    _gender = _preferences.gender;
    _secondaryColor = _preferences.secondaryColor;
    _textEditingController = TextEditingController(text: _preferences.userName);
    super.initState();
  }

  void _setSelectedRadio(int? value) {
    _preferences.gender = value ?? 1;
    _gender = _preferences.gender;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ajustes'),
          backgroundColor:
              (_preferences.secondaryColor) ? Colors.teal : Colors.blue,
        ),
        drawer: const MenuWidget(),
        body: ListView(
          children: [
            // Titulo
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            SwitchListTile(
                value: _secondaryColor,
                title: const Text('Color Secundario'),
                onChanged: (value) {
                  setState(() {
                    _preferences.secondaryColor = value;
                    _secondaryColor = _preferences.secondaryColor;
                  });
                }),
            // Masculino y Femenino
            RadioListTile(
                value: 1,
                title: const Text('Masculino'),
                groupValue: _gender,
                onChanged: _setSelectedRadio),
            RadioListTile(
                value: 2,
                title: const Text('Femenino'),
                groupValue: _gender,
                onChanged: _setSelectedRadio),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre de la persona usando el teléfono'),
                onChanged: (value) {
                  _preferences.userName = value;
                },
              ),
            )
          ],
        ));
  }
}
