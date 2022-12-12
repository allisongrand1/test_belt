import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:test_belt/module_bloc/country_bloc/country_bloc.dart';
import 'package:test_belt/module_bloc/router/fluro_router.dart';
import 'package:test_belt/module_data/repository.dart';
import 'package:test_belt/theme/theme.dart';

GetIt getIt = GetIt.instance;

// инициализируем репозиторий, подключаем get_it и блоки, устанавливаем роуты
void main() {
  final userRepository = CountryRepository();
  userRepository.setup();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => CountryBloc()),
  ], child: const MyApp()));
  RouteFluro.setupRouter();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //добавляем сплэш-скрин при загрузке, и прослушиваем тему приложения
  @override
  void initState() {
    super.initState();
    initialization(context);
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  //создаем небольшую задержку для сплэш-скрина
  Future initialization(BuildContext? context) async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      initialRoute: '/',
      onGenerateRoute: RouteFluro.router.generator,
    );
  }
}
