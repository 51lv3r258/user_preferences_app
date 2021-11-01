import 'package:flutter/material.dart';

import 'src/screens/home_screen.dart';
import 'src/screens/settings_screen.dart';
import 'src/shared_preferences/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final UserPreferences preferences = UserPreferences();
  await preferences.initPreferences();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserPreferences _preferences = UserPreferences();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      debugShowCheckedModeBanner: false,
      initialRoute: _preferences.lastPage,
      routes: {
        'home': (_) => const HomeScreen(),
        'settings': (_) => const SettingsScreen()
      },
    );
  }
}
