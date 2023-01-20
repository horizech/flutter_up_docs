import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

class StartingView extends StatelessWidget {
  const StartingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpText(
            "Get started with FlutterUp.",
            style: UpStyle(textFontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText("Run this command with Flutter:"),
          ),
          const UpCode(
            code: ''' flutter pub add flutter_up''',
            codeHeight: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText(
                "This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):"),
          ),
          const UpCode(
            code: '''dependencies:
  flutter_up: ^0.6.5''',
            codeHeight: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText("Import it and use it in your Dart code:"),
          ),
          const UpCode(
            code: '''import 'package:flutter_up/flutter_up.dart';''',
            codeHeight: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText(
                "Now you need to create locater file in you lib folder and initaialize services you want to use"),
          ),
          const UpCode(
            assetCode: 'locator.dart',
            codeHeight: 280,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText("Now need to setup locator file in main"),
          ),
          const UpCode(
            assetCode: "main.dart",
            codeHeight: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText(
                "Now initalize you app by using FlutterUpApp, initialize routes by providing path and pagebuider to upRoute."),
          ),
          const UpCode(
            assetCode: "app.dart",
            codeHeight: 1100,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
