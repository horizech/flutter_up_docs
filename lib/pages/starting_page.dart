import 'package:flutter/material.dart';
import 'package:flutter_up_docs/widgets/up_code.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

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
            child: Text(
                "First you need to create locater file in you lib folder and initaialize services you want to use"),
          ),
          UpCode(
            assetCode: 'locator.dart',
            codeHeight: 300,
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
            child: Text("Now initalize you app by using FlutterUPApp"),
          ),
          UpCode(
            assetCode: "app.dart",
            codeHeight: 370,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
