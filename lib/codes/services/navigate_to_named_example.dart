import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/widgets/up_button.dart';

class NavigateToNamedExample extends StatelessWidget {
  const NavigateToNamedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: UpButton(
        onPressed: () async {
          ServiceManager<UpNavigationService>().navigateToNamed(
            "/test",
            replace: true,
          );
        },
        text: "Navigate to named route",
      ),
    );
  }
}
