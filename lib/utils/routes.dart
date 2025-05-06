
import 'package:flutter/material.dart';
import 'package:test_app/Screens/my_homepage.dart';
import 'package:test_app/Screens/second_screen.dart';
import 'package:test_app/utils/route_name.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.homepage:
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case RouteName.secondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body:Center(
                child: Text("No Route Found")
            ),
          );
        }
        );
    }

  }

}