import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
