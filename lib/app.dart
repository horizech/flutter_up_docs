import 'package:flutter/material.dart';

import 'package:flutter_up/flutter_up_app.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up_docs/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterUpApp(
      //Define theme collection and default theme id
      themeCollection: UpThemes.predefinedThemesCollection,
      defaultThemeId: UpThemes.lightBlue.id,
      title: 'FlutterUp docs',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
      home: const HomePage(),
    );
  }
}
