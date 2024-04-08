import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_layout.dart';
import 'package:flutter_up_docs/app.dart';

void main() {
  // To initialize screen sizes
  ServiceManager<UpLayoutService>().mobileLimit = 400;
  ServiceManager<UpLayoutService>().tabletLimit = 600;

  runApp(const MyApp());
}
