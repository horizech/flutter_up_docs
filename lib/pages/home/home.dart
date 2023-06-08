import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return UpScaffold(
      appBar: const UpAppBar(
        title: "Flutter Up Documentation",
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
            const UpText(
              "Simplify your flutter development",
            ),
            const SizedBox(
              height: 20,
            ),
            UpButton(
              type: UpButtonType.elevated,
              onPressed: () {
                ServiceManager<UpNavigationService>()
                    .navigateToNamed(DocsPage.routeName);
              },
              text: 'Get Started',
            ),
          ],
        ),
      ),
    );
  }
}
