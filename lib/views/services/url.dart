import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/services/url_service_example.dart';
import 'package:flutter_up_docs/views/services/initialize.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class UrlServiceView extends StatelessWidget {
  const UrlServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceName = "UpUrlService";

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceIntializeWidget(serviceName: serviceName),
            UpText(
              "$serviceName has a method openUrl() which takes a URL as a parameter, and open that URL. You can also pass webOnlyWindowName as parameter. For web, [webOnlyWindowName] specifies a target for the launch, it can be _blank(opens the URL in a new tab) and _self(opens the URL in the current tab). By defult webOnlyWindowName is _blank.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const URLServiceExmaple(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: ServiceAssest.url,
                  height: 420,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
