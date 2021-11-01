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

  // GET Y SET gender

  int get gender {
    return _preferences.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _preferences.setInt('gender', value);
  }

  // GET Y SET _secondaryColor

  bool get secondaryColor {
    return _preferences.getBool('secondaryColor') ?? false;
  }

  set secondaryColor(bool value) {
    _preferences.setBool('secondaryColor', value);
  }

  // GET Y SET _userName

  String get userName {
    return _preferences.getString('userName') ?? '';
  }

  set userName(String value) {
    _preferences.setString('userName', value);
  }

  // GET Y SET  last_page

  String get lastPage {
    return _preferences.getString('lastPage') ?? 'home';
  }

  set lastPage(String value) {
    _preferences.setString('lastPage', value);
  }
}
