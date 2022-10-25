import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';

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
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Navigation Service",
                style: TextStyle(fontSize: 25),
              ),
            ),
            UpCode(
              assetCode: 'navigation_service_example.dart',
              codeHeight: 330,
            ),
          ],
        ),
      ),
    );
  }
}
