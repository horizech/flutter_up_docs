import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';

class ServiceIntializeWidget extends StatelessWidget {
  final String serviceName;
  const ServiceIntializeWidget({Key? key, required this.serviceName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        UpText(
          style: UpStyle(textSize: 25),
          serviceName,
        ),
        const SizedBox(
          height: 30,
        ),
        UpText(
          "To use $serviceName you need to create locater file in you lib folder. To use flutterUp services you need to call setupFlutterUpLocators() method and pass flutterUp predefined services list in this method. You can also create your own services.",
        ),
        const SizedBox(
          height: 10,
        ),
        const UpCode(
          assetCode: 'assets/locator.dart',
          height: 280,
        ),
        const SizedBox(
          height: 30,
        ),
        const UpText(
            "Now you need to call you locator method in main function."),
        const SizedBox(
          height: 10,
        ),
        const UpCode(
          assetCode: ServiceAssest.locator,
          height: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        const UpText("You can access your desired service like following"),
        const SizedBox(
          height: 10,
        ),
        const UpCode(
          assetCode: ServiceAssest.serviceCall,
          height: 200,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
