import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up_docs/constants.dart';

class NavigationServiceExample extends StatelessWidget {
  const NavigationServiceExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: UpButton(
        onPressed: () async {
          ServiceManager<UpNavigationService>().navigate(
            path: Routes.home,
            replace: true,
          );
        },
        text: "Navigate",
      ),
    );
  }
}
