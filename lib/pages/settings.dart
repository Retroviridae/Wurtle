import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/providers/theme_provider.dart';
import 'package:wurtle/themes/theme_preferences.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.maybePop(context);
              },
              icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          Consumer<ThemeProvider>(
            builder: (_, notifier, __) {
              bool isSwitched = false;
              isSwitched = notifier.isDark;
              return SwitchListTile(
                title: const Text('Toggle Dark Mode'),
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                  ThemePreferences.saveTheme(isDark: isSwitched);
                  Provider.of<ThemeProvider>(context, listen: false)
                      .setTheme(turnOn: isSwitched);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
