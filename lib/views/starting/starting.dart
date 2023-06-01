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
            style: UpStyle(textSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText("Run this command with Flutter:"),
          ),
          // const UpDynamicView(
          //   code: ''' flutter pub add flutter_up''',
          // ),
          const UpCode(
              code: ''' flutter pub add flutter_up''',
              height: 80,
              language: 'shell'),
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
  flutter_up: ^2.0.7''',
            height: 80,
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
            height: 80,
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
            assetCode: 'assets/locator.dart',
            height: 280,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: UpText("Now need to setup locator file in main"),
          ),
          const UpCode(
            assetCode: "assets/main.dart",
            height: 300,
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
            assetCode: "assets/app.dart",
            height: 500,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
