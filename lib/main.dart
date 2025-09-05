import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/count_provider1.dart';
import 'package:provider_tutorial/providers/example_two_provider.dart';
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
       ChangeNotifierProvider(create: (_) => ExampleTwoProvider())
     ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const ExampleTwo(),
        ),

    );

  }
}


