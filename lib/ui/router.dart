import 'package:flutter/material.dart';

const String initialRoute = '/gauss';
class Ruter{
  static Route<dynamic> generateRoute(RouteSettings settings){
    return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
  }
}