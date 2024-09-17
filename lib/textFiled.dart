import 'package:flutter/material.dart';

class TextFileds extends StatefulWidget {
  @override
  State<TextFileds> createState() => _TextFiledsState();
}

class _TextFiledsState extends State<TextFileds> {
  final nameController = TextEditingController();

  final passwordController = TextEditingController();

  Widget buildTextFiled(
    BuildContext context,
    String text,
    TextEditingController controller,
  ) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(160, 158, 158, 158),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: text,
            ),
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      buildTextFiled(context, 'Login', nameController),
      const SizedBox(
        height: 17,
      ),
      buildTextFiled(context, 'Password', passwordController),
      
    ]);
  }
}
