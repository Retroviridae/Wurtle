import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/providers/controller.dart';
import 'package:wurtle/providers/theme_provider.dart';
import 'package:wurtle/themes/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Controller(),
    ),
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, notifier, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wurtle',
        theme: notifier.isDark ? darkTheme : lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
