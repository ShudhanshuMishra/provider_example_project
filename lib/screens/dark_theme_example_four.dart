import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/dark_theme_provider.dart';

class DarkThemeExampleFour extends StatefulWidget {
  const DarkThemeExampleFour({super.key});

  @override
  State<DarkThemeExampleFour> createState() => _DarkThemeExampleFourState();
}

class _DarkThemeExampleFourState extends State<DarkThemeExampleFour> {
  @override
  Widget build(BuildContext context) {
    print('object');
    final themeChanger = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
           title: Text('Light Mode'),
             value: ThemeMode.light,
             groupValue: themeChanger.themeMode,
             onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme)
        ],
      ),
    );
  }
}
