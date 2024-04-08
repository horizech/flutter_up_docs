import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/widgets/up_button.dart';

class NavigateToNamedExample1 extends StatelessWidget {
  const NavigateToNamedExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: UpButton(
        onPressed: () async {
          ServiceManager<UpNavigationService>().navigateToNamed(
            "/test",
            queryParams: {"Id": "1"},
            extra: {"Ex": "1"},
          );
        },
        text: "Navigate to named route",
      ),
    );
  }
}
