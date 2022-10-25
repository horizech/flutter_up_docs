import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_theme_data.dart';

final UpThemeData lightpurple = UpThemeData(
  id: 10,
  themeData: ThemeData(
    primaryColor: Colors.purple[500],
    scaffoldBackgroundColor: Colors.purple[100],
    appBarTheme: AppBarTheme(
      color: Colors.purple[500],
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.purple[100],
    ),
  ),
);
