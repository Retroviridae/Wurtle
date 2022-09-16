import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/providers/controller.dart';
import 'package:wurtle/providers/theme_provider.dart';
import 'package:wurtle/themes/theme_preferences.dart';
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
    return FutureBuilder(
      future: ThemePreferences.getTheme(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Provider.of<ThemeProvider>(context, listen: false)
                .setTheme(turnOn: snapshot.data as bool);
          });
        }
        return Consumer<ThemeProvider>(
          builder: (_, notifier, __) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Wurtle',
            theme: notifier.isDark ? darkTheme : lightTheme,
            home: const HomePage(),
          ),
        );
      },
    );
  }
}
