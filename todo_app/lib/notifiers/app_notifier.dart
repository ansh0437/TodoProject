import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app/theme/app_theme.dart';
import '../data/preferences.dart';

class AppNotifier with ChangeNotifier {
  bool _darkMode = false;
  bool _hindiLanguage = false;

  AppNotifier() {
    _darkMode = TodoPreference.darkMode.boolean;
    _hindiLanguage = TodoPreference.hindiLanguage.boolean;
  }

  ThemeData get theme => _darkMode ? darkTheme : lightTheme;

  changeTheme() {
    _darkMode = TodoPreference.darkMode.boolean;
    notifyListeners();
  }

  Locale get locale => _hindiLanguage ? Locale("hi") : Locale("en");

  changeLanguage() {
    _hindiLanguage = TodoPreference.hindiLanguage.boolean;
    notifyListeners();
  }
}
