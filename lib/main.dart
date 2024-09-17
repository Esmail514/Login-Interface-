import 'package:flutter/material.dart';

import './interface.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageInterface(),
    );
  }
}

class HomePageInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Interface());
  }
}
