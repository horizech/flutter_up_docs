import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_text.dart';

class SearchServiceView extends StatelessWidget {
  const SearchServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            UpText(
              style: UpStyle(textSize: 25),
              "Search Service",
            ),
            const SizedBox(
              height: 10,
            ),
            const UpCode(
              assetCode: 'assets/search_service_example.dart',
              height: 270,
            ),
          ],
        ),
      ),
    );
  }
}
