import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/services/navigate_to_named_example1.dart';
import 'package:flutter_up_docs/codes/services/navigation_service_example.dart';
import 'package:flutter_up_docs/codes/services/navigate_to_named_example.dart';
import 'package:flutter_up_docs/views/services/initialize.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class NavigationServiceView extends StatelessWidget {
  const NavigationServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceName = "UpNavigationService";
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceIntializeWidget(serviceName: serviceName),
            UpText(
                "$serviceName has a method navigate() which takes path of Route as a parameter, and navigate to that path. You can also pass replace true as optional parameter which replaces the top-most page of the page stack but always uses a new page key. By dafault replace parameter value is false."),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const NavigationServiceExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: ServiceAssest.navigation,
                  height: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "This service has a method navigateToNamed() which takes name of Route as a parameter, and navigate to that location. You can also pass replace true as optional parameter which replaces the top-most page of the page stack but always uses a new page key. By dafault replace parameter value is false."),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const NavigateToNamedExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: ServiceAssest.navigationToNamed,
                  height: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "navigateToNamed() method also takes queryParams, params and extra as Optional parameters."),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const NavigateToNamedExample1(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: ServiceAssest.navigationToNamed1,
                  height: 420,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const UpText(
                "You can get these optional parameters value from state in you main app where you have initialized this UpRoute."),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: ServiceAssest.navigation1,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
