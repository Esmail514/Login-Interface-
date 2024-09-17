import 'package:flutter/material.dart';

import './textFiled.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isChecked = false;

  Widget buildIconButton(Function choosedIcon, IconData icon, Color color) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      iconSize: 40,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 35,
                ),
              ),
            ),
            TextFileds(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    activeColor: Colors.purple,
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    }),
                const Text('Remamber me'),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconButton(
                  () {},
                  Icons.facebook,
                  Colors.blue,
                ),
                buildIconButton(
                  () {},
                  Icons.email,
                  Colors.yellow,
                ),
                buildIconButton(
                  () {},
                  Icons.phone,
                  Colors.green,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
