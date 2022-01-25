import 'package:flutter/material.dart';
import 'package:until_pro_exercise/ui/home/home.dart';

class Routes {
  Routes._();
  
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
  };
}
