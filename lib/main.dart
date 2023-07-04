import 'package:flutter/material.dart';
import 'package:linkemo/features/home/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkEmo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 18, 1)
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}