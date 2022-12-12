import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:test_belt/module_ui/pages/country_page.dart';
import 'package:test_belt/module_ui/pages/greeting/greeting.dart';
import 'package:test_belt/module_ui/pages/greeting/say_your_name.dart';
import 'package:test_belt/module_ui/pages/home_page.dart';

class RouteFluro {
  static FluroRouter router = FluroRouter();

  //обработчик для каждого роута
  static final _sayMyName =
      Handler(handlerFunc: (context, Map<String, dynamic> param) {
    return const YourName();
  });

  static final _greeting =
      Handler(handlerFunc: (context, Map<String, dynamic> param) {
    final args = ModalRoute.of(context!)!.settings.arguments as Map;
    return Greeting(
      text: args['greeting.name'],
    );
  });

  static final _homeHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> param) {
    return const HomePage();
  });

  static final Handler _countryHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> parametrs) {
    final args = ModalRoute.of(context!)!.settings.arguments as Map;
    return CountryPage(
      uuid: parametrs['uuid'][0],
      name: args['country.name'],
      poster: args['country.poster'],
      description: args['country.description'],
      photos: args['country.photos'],
      website: args['country.website'],
    );
  });

  // задефайним (определим) роуты
  static void setupRouter() {
    router.define(YourName.routeName,
        handler: _sayMyName, transitionType: TransitionType.native);
    router.define(Greeting.routeName,
        handler: _greeting, transitionType: TransitionType.native);
    router.define(HomePage.routeName,
        handler: _homeHandler, transitionType: TransitionType.native);
    router.define('${CountryPage.routeName}/:uuid', handler: _countryHandler);
  }
}
