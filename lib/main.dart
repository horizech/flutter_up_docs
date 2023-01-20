import 'package:flutter/material.dart';
import 'package:flutter_up_docs/app.dart';
import 'package:flutter_up_docs/locator.dart';

void main() {
  setupLocator();
  // To use Security Service, initialize it with a 16 characters key
  // UpSecurity.initialize(Credentials.kAesIV);

  // to initialize screen sizes
  // ServiceManager<UpLayoutService>().mobileLimit = 400;
  // ServiceManager<UpLayoutService>().tabletLimit = 600;

  runApp(const MyApp());
}
