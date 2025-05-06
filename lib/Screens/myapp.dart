import 'package:flutter/material.dart';
import 'package:test_app/utils/route_name.dart';
import 'package:test_app/utils/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.homepage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
