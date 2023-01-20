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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpText(
                style: UpStyle(textFontSize: 25),
                "Search Service",
              ),
            ),
            const UpCode(
              assetCode: 'search_service_example.dart',
              codeHeight: 270,
            ),
          ],
        ),
      ),
    );
  }
}
