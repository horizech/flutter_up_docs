import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/services/navigate_to_named_example1.dart';
import 'package:flutter_up_docs/codes/services/navigation_service_example.dart';
import 'package:flutter_up_docs/codes/services/navigate_to_named_example.dart';
import 'package:flutter_up_docs/views/services/initialize.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class LayoutServiceView extends StatelessWidget {
  const LayoutServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceName = "UpLayoutService";
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceIntializeWidget(serviceName: serviceName),
            UpText(
                "Using $serviceName you can set mobile and tablet limits in main function.Now your screen wil work according to these limits. By default mobile limit is 640 and tablet limit is 1200."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.layout,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
