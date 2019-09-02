import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/home.dart';
import 'package:provider/provider.dart';
import './blocs/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanges>(
 builder: (_)=> ThemeChanges(ThemeData.dark()),
          child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanges>(context);
    return MaterialApp(
        home: HomePage(),
        theme:theme.getTheme() ,
      );
  }
}