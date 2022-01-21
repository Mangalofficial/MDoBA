import 'package:MDoBA/ui/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/input.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.amberAccent,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Myhome(),
        "/run": (BuildContext context) => DockerRun(),
      },
    );
  }
}
