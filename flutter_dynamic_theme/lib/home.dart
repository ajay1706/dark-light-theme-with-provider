import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/blocs/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanges _themeChanger = Provider.of<ThemeChanges>(context);
    return Scaffold(
   appBar: AppBar(title: Text("Home"),),
   body: Container(
     child:Column(children: <Widget>[
       FlatButton(child: 
       Text("Dark Theme"),
       onPressed: () => _themeChanger.setTheme(ThemeData.dark()),),
          FlatButton(child: 
       Text("Light Theme"),
       onPressed: () => _themeChanger.setTheme(ThemeData.light()),)
     ],) ,),
    );
  }
}