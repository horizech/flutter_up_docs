import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';

class StartingView extends StatelessWidget {
  const StartingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Get started with FlutterUp.",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Run this command with Flutter:"),
          ),
          UpCode(
            code: ''' flutter pub add flutter_up''',
            codeHeight: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):"),
          ),
          UpCode(
            code: '''dependencies:
  flutter_up: ^0.3.0''',
            codeHeight: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Import it and use it in your Dart code:"),
          ),
          UpCode(
            code: '''import 'package:flutter_up/flutter_up.dart';''',
            codeHeight: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "Now you need to create locater file in you lib folder and initaialize services you want to use"),
          ),
          UpCode(
            assetCode: 'locator.dart',
            codeHeight: 280,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Now need to setup locator file in main"),
          ),
          UpCode(
            assetCode: "main.dart",
            codeHeight: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "To use Security Service, create credentials file and initialize it with a 16 characters key"),
          ),
          UpCode(
            code: '''class Credentials {
              //Your 16 character key
  static const String kAesIV = '';
}
''',
            codeHeight: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Now initalize you app by using FlutterUpApp"),
          ),
          UpCode(
            assetCode: "app.dart",
            codeHeight: 400,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
