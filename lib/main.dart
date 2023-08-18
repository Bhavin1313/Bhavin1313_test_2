import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Color(0xff2ac9f0),
      ),
      routes: {
        '/': (context) => HomePage(),
        'table': (context) => Table(),
      },
    ),
  );
}
