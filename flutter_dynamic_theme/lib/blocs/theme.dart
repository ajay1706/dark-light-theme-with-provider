import 'package:flutter/material.dart';


class ThemeChanges with ChangeNotifier{
ThemeData _themeData;

ThemeChanges(this._themeData);

getTheme() => _themeData;
setTheme(ThemeData theme){
  _themeData = theme;
  notifyListeners();
}

}