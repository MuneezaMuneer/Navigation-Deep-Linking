import 'package:flutter/material.dart';

import 'navigation/my_router_delegate.dart';
import 'navigation/my_router_information_parser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouterInformationParser(),
    );
  }
}
