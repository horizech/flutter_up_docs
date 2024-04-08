import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/assets.dart';
import 'package:flutter_up_docs/codes/services/search_service_example.dart';
import 'package:flutter_up_docs/views/services/initialize.dart';
import 'package:flutter_up_docs/widgets/view/widget_box.dart';

class SearchServiceView extends StatelessWidget {
  const SearchServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String serviceName = "UpSearchService";

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceIntializeWidget(serviceName: serviceName),
            UpText(
              "$serviceName has a method update() which takes text as parameter and update search value. This service has a method remove() which sets search value to null. You can also get current search value using ServiceManager<UpSearchService>().current.",
            ),
            const SizedBox(
              height: 10,
            ),
            widgetBox(
              widgets: [
                const SearchServiceExample(),
                const SizedBox(
                  height: 10,
                ),
                const UpCode(
                  assetCode: ServiceAssest.search,
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
