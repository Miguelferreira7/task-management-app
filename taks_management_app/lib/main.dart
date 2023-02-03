import 'package:flutter/material.dart';
import 'package:taks_management_app/core/inject.dart';
import 'package:taks_management_app/core/theme.dart';
import 'package:taks_management_app/layers/presentation/UI/pages/home.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

