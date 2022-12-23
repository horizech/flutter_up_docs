import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Up Documentation"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Flutter Up",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Simplify your flutter development",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            UpButton(
              isRounded: true,
              roundedBorderRadius: 15,
              buttonType: UpButtonType.elevated,
              onPress: () {
                ServiceManager<UpNavigationService>()
                    .navigateToNamed(DocsPage.routeName);
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
