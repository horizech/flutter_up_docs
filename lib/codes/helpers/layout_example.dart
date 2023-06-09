import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_layout.dart';
import 'package:flutter_up/widgets/up_text.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Layout: ",
              ),
              UpLayout.isPortrait(context)
                  ? const UpText("Portrait")
                  : const UpText("Landscape"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "View: ",
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
