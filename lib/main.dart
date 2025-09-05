import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/count_provider1.dart';
import 'package:provider_tutorial/providers/dark_theme_provider.dart';
import 'package:provider_tutorial/providers/example_three_provider.dart';
import 'package:provider_tutorial/providers/example_two_provider.dart';
import 'package:provider_tutorial/screens/dark_theme_example_four.dart';
import 'package:provider_tutorial/screens/example_three.dart';
import 'package:provider_tutorial/screens/example_two.dart';
import 'package:provider_tutorial/screens/provider_tutorial1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (_) =>  CountProvider(),),
       ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
       ChangeNotifierProvider(create: (_) => ExampleThreeProvider()),
       ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
     ],
        child: Builder(
            builder: (BuildContext context){
              final themeChanger = Provider.of<DarkThemeProvider>(context);
            return MaterialApp(
            themeMode:themeChanger.themeMode,
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark
            ),
            home: const DarkThemeExampleFour(),
          );
        })

    );

  }
}


