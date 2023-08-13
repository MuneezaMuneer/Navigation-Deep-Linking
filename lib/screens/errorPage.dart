import 'package:flutter/material.dart';

class MyErrorPage extends StatelessWidget {
  const MyErrorPage({Key? key}) : super(key: key);
  static const pageName = '/error';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Error Page'),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            height: 80,
            width: 200,
            child: const Text(
              '404 , Error Not Found',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
