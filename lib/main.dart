import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/features/home/data/model/link_details_model.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';
import 'package:linkemo/features/home/presentation/home_page.dart';
import 'package:linkemo/service_locator.dart';

void main() async{
  // hive initialization
  await Hive.initFlutter();
  Hive.registerAdapter(LinkDetailsModelAdapter());
  Hive.registerAdapter(TagModelAdapter());

  // service locator initialization
  init();

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