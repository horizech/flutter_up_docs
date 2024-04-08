import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_layout.dart';
import 'package:flutter_up/helpers/up_scaffold_helper.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';

class ScaffoldHelperExample extends StatelessWidget {
  const ScaffoldHelperExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpText(
            "Show snackBar ",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              UpButton(
                onPressed: () {
                  UpScaffoldHelper().showSnackBar("This is snackbar");
                },
                text: "Show snackbar",
              ),
              UpLayout.isMobile(context) == true
                  ? const UpText("Mobile")
                  : UpLayout.isTablet(context) == true
                      ? const UpText("Tablet")
                      : const UpText("Desktop"),
            ],
          ),
        ),
      ],
    );
  }
}
