import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/constants/colors.dart';
import 'package:wurtle/controller.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Controller(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wurtle',
      theme: ThemeData(
        primaryColorLight: lightThemeLightShade,
        primaryColorDark: lightThemeDarkShade,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme().copyWith(
            bodyText2: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )),
      ),
      home: const HomePage(),
    );
  }
}
