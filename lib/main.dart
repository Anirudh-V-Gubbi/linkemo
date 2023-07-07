import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/features/home/presentation/home_page.dart';

void main() async{
  await Hive.initFlutter();
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
        scaffoldBackgroundColor: kScaffoldColor
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}