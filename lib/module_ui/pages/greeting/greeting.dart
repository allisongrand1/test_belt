import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_belt/module_bloc/country_bloc/country_bloc.dart';

class Greeting extends StatefulWidget {
  const Greeting({super.key, required this.text});
  static const routeName = '/greeting';
  final String text;

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/home');
      BlocProvider.of<CountryBloc>(context).add(const CountryListLoadEvent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          )),
      body: SafeArea(
        child: timeLine(DateTime.now(), widget.text),
      ),
    );
  }
}

Widget timeLine(DateTime time, String name) {
  if (((time.hour >= 18) && (time.hour <= 23)) ||
      ((time.hour >= 0) && (time.hour < 4))) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('Добрый вечер, $name!',
              speed: const Duration(milliseconds: 70)),
        ],
        isRepeatingAnimation: false,
      ),
    );
  } else if ((time.hour >= 4) && (time.hour < 12)) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('Доброе утро, $name!',
              speed: const Duration(milliseconds: 70)),
        ],
        isRepeatingAnimation: false,
      ),
    );
  } else {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('Добрый день, $name!',
              speed: const Duration(milliseconds: 70)),
        ],
        isRepeatingAnimation: false,
      ),
    );
  }
}
