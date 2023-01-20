import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_layout.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_text.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              UpText(
                "Layout: ",
                style: UpStyle(textFontSize: 20),
              ),
              UpLayout.isPortrait(context)
                  ? const UpText("Portrait")
                  : const UpText("Landscape"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              UpText(
                "View: ",
                style: UpStyle(textFontSize: 20),
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
