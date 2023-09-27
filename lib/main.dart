import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EpVi assignement',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // other page
      home: ModalBottomSheetDemo(),
    );
  }
}


