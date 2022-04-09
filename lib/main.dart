import 'package:absorb_pointer_ignore_pointer/theme/palette.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'Absorb & Ignored Pointer';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Palette.materialColor,
      ),
      routes: {
        '/':(_)=>HomeScreen(title:_title),
      },
    );
  }
}
