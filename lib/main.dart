import 'package:flutter/material.dart';
import 'package:proyectorestclient/src/routing/routing_module.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: routingModule(),
    );
  }
}
