import 'package:flutter/material.dart';

import 'package:flutter_up/flutter_up_app.dart';
import 'package:flutter_up_docs/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterUpApp(
      title: 'Flutter_up_docs',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
      home: const HomePage(),
    );
  }
}
