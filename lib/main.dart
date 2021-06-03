import 'package:flutter/material.dart';
import 'package:form_validation/ui/views/login.dart';

import 'package:form_validation/ui/views/signup.dart';

import 'core/constant/app_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Signup(),
        initialRoute: RoutePaths.LoginRoute,
        routes: {
          RoutePaths.SignupRoute: (context) => Signup(),
          RoutePaths.LoginRoute: (context) => Login(),
        });
  }
}
