import 'package:flutter/material.dart';

import '../navigation/my_router_delegate.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);
static const pageName = '/second';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Second Page'),),
      body: Center(
      child:ElevatedButton(onPressed: () {
        MyRouterDelegate.of(context).pop();
      }, child:const Text('Back',style:TextStyle(fontSize: 16),),)
     )
    );
  }
}