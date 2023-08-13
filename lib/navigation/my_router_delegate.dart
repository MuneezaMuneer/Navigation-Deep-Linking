import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../pages/page_builder.dart';
import '../screens/homePage.dart';
class MyRouterDelegate extends RouterDelegate<RouteSettings>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  static MyRouterDelegate of(BuildContext context) {
    var delegate = Router.of(context).routerDelegate;
    assert(delegate is MyRouterDelegate);
    return delegate as MyRouterDelegate;
  }

  final List<RouteSettings> _stack = <RouteSettings>[
    const RouteSettings(name: MyHomePage.pageName)
  ];

  pop() {
    if (_stack.isNotEmpty) {
      _stack.remove(_stack.last);
      // _stack.removeLast();
      notifyListeners();
    }
  }

  push(RouteSettings settings) {
    _stack.add(settings);
    notifyListeners();
  }

  @override
  RouteSettings? get currentConfiguration => _stack.isNotEmpty
      ? _stack.last
      : const RouteSettings(name: MyHomePage.pageName);
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        for (RouteSettings settings in _stack) PageBuilder.build(settings)
      ],
      onPopPage: onPopPage,
    );
  }

  // ignore: avoid_types_as_parameter_names
  bool onPopPage(Route<dynamic> route, result) {
    if (_stack.isNotEmpty) {
      if (_stack.last == route.settings) {
        _stack.remove(_stack.last);
        notifyListeners();
      }
    }
    return route.didPop(result);
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(RouteSettings configuration) {
    _stack.clear;
    _stack.add(configuration);
    return SynchronousFuture(null);
  }
}
