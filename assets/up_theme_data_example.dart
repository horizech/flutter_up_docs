import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/themes/up_theme_data.dart';

final UpThemeData lightpurple = UpThemeData(
  baseColor: Colors.pink,
  primaryColor: Colors.purple,
  primaryStyle: UpStyle(
    appBarColor: Colors.purple[500]!,
    appBarTitleSize: 20,
    appBarTitleColor: Colors.purple[500],
    borderRadius: 8,
    borderWidth: 2,
    errorBorderColor: Colors.red,
    focusedBorderColor: Colors.purple[700]!,
    isRounded: true,
    iconColor: Colors.purple[500]!,
    iconSize: 16,
    toastBackgroundColor: Colors.purple[500],
    toastTextColor: Colors.purple[500],
  ),
  secondaryColor: Colors.orange,
  tertiaryColor: Colors.blue,
  warnColor: Colors.red,
  successColor: Colors.green,
  linkColor: Colors.blueGrey,
);
