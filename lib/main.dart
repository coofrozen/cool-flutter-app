import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynewflutt/MyApp.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: MyApp(),
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
    ),
  );
}
