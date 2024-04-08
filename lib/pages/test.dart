import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';

class TestPage extends StatefulWidget {
  final Map<String, String>? queryParams;
  final Object? extra;
  const TestPage({Key? key, this.queryParams, this.extra}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return UpScaffold(
      appBar: UpAppBar(
        style: UpStyle(appBarHeight: 100),
        title: "Test page",
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UpText(
              "Flutter Up",
              style: UpStyle(textSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
