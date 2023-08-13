import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../pages/page_builder.dart';
import '../screens/errorPage.dart';
class MyRouterInformationParser extends RouteInformationParser<RouteSettings>{
  @override
  Future<RouteSettings> parseRouteInformation(RouteInformation routeInformation) {
    var settings = RouteSettings( name: routeInformation.location);
    if (PageBuilder.isValidPath(settings)) {
      return SynchronousFuture(settings);
    }
    return SynchronousFuture(const RouteSettings(name: MyErrorPage.pageName));
  }
  @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    if (PageBuilder.isValidPath(configuration)) {
  return RouteInformation(location: configuration.name);      
    }
    return const RouteInformation(location:  MyErrorPage.pageName);
  }
}