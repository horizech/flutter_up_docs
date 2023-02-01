import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

class NavigationServiceView extends StatelessWidget {
  const NavigationServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textSize: 25),
                "Navigation Service",
              ),
            ),
            const UpCode(
              assetCode: 'assets/navigation_service_example.dart',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
