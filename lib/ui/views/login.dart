import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_validation/core/constant/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;

  // signIn(String email, String pass) async {
  //   String url = ' http://app.kasast.com/api/v1/sessions';
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   Map body = {'email': email, 'password': pass};
  //   var jsonResponse;
  //   var res = await http.post(Uri.parse(url), body: body);
  //   if (res.statusCode == 200) {
  //     jsonResponse = json.decode(res.body);

  //     print('Respponse status:${res.statusCode}');

  //     print('Respponse status:${res.statusCode}');
  //     if (jsonResponse != null) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //       sharedPreferences.setString('token', jsonResponse['token']);
  //       Navigator.of(context).pushNamedAndRemoveUntil(newRouteName, (route) => false)
  //     }
  //   }
  // }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalKey = new GlobalKey<FormState>();
  FocusNode _nodeEmail = FocusNode();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'login',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            focusNode: _nodeEmail,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'User Name',
                                hintText:
                                    'Enter valid mail id as abc@gmail.com'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter your secure password'),
                          ),
                        ),
                        RaisedButton(
                          hoverColor: Colors.black,
                          color: Colors.blue,
                          padding: EdgeInsets.all(15),
                          onPressed: () {},
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RoutePaths.SignupRoute);
                            },
                            child: Text('Signup')),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
