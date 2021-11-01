import 'package:flutter/material.dart';

import 'src/screens/home_screen.dart';
import 'src/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'settings': (_) => const SettingsScreen ()
      },
    );
  }
}
