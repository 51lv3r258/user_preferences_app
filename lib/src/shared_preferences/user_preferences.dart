import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._internal();

  late SharedPreferences _preferences;

  initPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // GET Y SET Genero

  int get gender {
    return _preferences.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _preferences.setInt('gender', value);
  }
}
