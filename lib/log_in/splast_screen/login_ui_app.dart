import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_flutter_tutorial/log_in/splast_screen/splast_screen.dart';

class LoginUiApp extends StatelessWidget {

  Color _primaryColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'Flutter Login'),
    );
  }
}
