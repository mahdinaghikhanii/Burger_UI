import 'package:flutter/material.dart';

import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: "GothamPro",
                fontWeight: FontWeight.w700),
            titleMedium: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: "GothamPro",
                fontWeight: FontWeight.w500),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, primary: Color(0xFF242329)),
          useMaterial3: true,
        ),
        home: Navigation());
  }
}
