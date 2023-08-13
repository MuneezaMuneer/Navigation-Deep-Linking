import 'package:flutter/cupertino.dart';
import '../screens/errorPage.dart';
import '../screens/homePage.dart';
import '../screens/secondPage.dart';
import 'my_page.dart';

class PageBuilder {
  static Page build(RouteSettings settings) {
    if (settings.name == MyHomePage.pageName) {
      return MyPage(
          page: const MyHomePage(),
          name: settings.name!,
          arguments: settings.arguments);
    } else if (settings.name == MySecondPage.pageName) {
      return MyPage(
          page: const MySecondPage(),
          name: settings.name!,
          arguments: settings.arguments);
    } else {
      return MyPage(
          page: const MyErrorPage(),
          name: settings.name!,
          arguments: settings.arguments);
    }
  }

  static bool isValidPath(RouteSettings settings) {
    return settings.name == MyHomePage.pageName ||
        settings.name == MySecondPage.pageName;
  }
}
