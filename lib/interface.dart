import 'package:flutter/material.dart';

import './textFiled.dart';

class Interface extends StatefulWidget {
  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
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
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
          child: const Text(
            'Log In',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(75, 83, 227, 1),
              fontSize: 50,
            ),
          ),
        ),
        TextFileds(),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 35,
            ),
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
          height: MediaQuery.of(context).size.height * 0.13,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          height: 50,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 41, 49, 198).withOpacity(0.7),
                    const Color.fromRGBO(227, 64, 191, 1)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Foget your password?',
              style: TextStyle(
                color: Colors.blue,
              ),
            ))
      ]),
    );
  }
}
