import 'package:env_specific_config/app_config.dart';
import 'package:flutter/material.dart';

void main({String env}) async {
  final config = await AppConfig.forEnvironment(env);
  runApp(MyApp(config: config));
}

class MyApp extends StatelessWidget {
  final AppConfig config;

  MyApp({Key key, this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Build Config Demo',
      home: Container(
        child: Center(
          child: Text(config.apiUrl),
        ),
      ),
    );
  }
}
