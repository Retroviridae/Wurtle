import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wurtle/providers/theme_provider.dart';
import 'package:wurtle/themes/theme_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isSwitched = false;

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
          SwitchListTile(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
                ThemePreferences.saveTheme(isDark: _isSwitched);
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(turnOn: _isSwitched);
              })
        ],
      ),
    );
  }
}
