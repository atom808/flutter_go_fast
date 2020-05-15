import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/app_controller.dart';
import 'package:flutter_go_fast/app/core/internationalization/app_translate.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslate(context).text('welcome'),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Modular.get<AppController>().setThemeData(ThemeMode.dark);
                },
                child: Text('Theme Dark'),
              ),
              RaisedButton(
                onPressed: () {
                  Modular.get<AppController>().setThemeData(ThemeMode.light);
                },
                child: Text('Theme Light'),
              ),
            ]),
      ),
    );
  }
}
