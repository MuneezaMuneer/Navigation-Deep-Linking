import 'package:flutter/material.dart';
import 'package:navigation_deep_linking/screens/secondPage.dart';
import '../navigation/my_router_delegate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const pageName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            MyRouterDelegate.of(context).push(const RouteSettings(name: MySecondPage.pageName));
          },
          child: const Text(
            'Next',
            style: TextStyle(fontSize: 16),
          ),
        )));
  }
}
