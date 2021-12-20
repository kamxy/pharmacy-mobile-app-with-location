import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive/hive.dart';
import 'package:pharmacy_app/components/main_button.dart';
import 'package:pharmacy_app/controllers/api_controller.dart';
import 'package:pharmacy_app/models/eczane_model.dart';
import 'package:pharmacy_app/screens/home_screen.dart';
import 'package:pharmacy_app/screens/pharmacy_list_screen.dart';

main() async {
  /* WidgetsFlutterBinding.ensureInitialized();
  Directory tempDir = await getApplicationDocumentsDirectory();

  Hive.init(tempDir.path + "/database");
  final box = await Hive.openBox("eczanelist");

  print(box.get("kamay")); */

  runApp(MyApp());
}

List<BoxShadow> shadow = [
  BoxShadow(
    color: const Color(0x29000000),
    offset: Offset(0, 9),
    blurRadius: 6,
  ),
];
Color darkThemeGrey = Color(0xff999999);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
