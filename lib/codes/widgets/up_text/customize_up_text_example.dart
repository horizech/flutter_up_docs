import 'package:flutter/material.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpTextExample extends StatelessWidget {
  const UpTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpText(
            style: UpStyle(
                textColor: Colors.purple,
                textWeight: FontWeight.w500,
                textFontStyle: FontStyle.italic,
                textBackgroundColor: Colors.purple.shade50,
                textSize: 12),
            isSelectable: true,
            'Italic text',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpText(
            style: UpStyle(
              textStrokeColor: Colors.green,
              textStrokeWidth: 4,
            ),
            'Stroke text',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpText(
            overflow: TextOverflow.fade,
            style: UpStyle(
              textBackgroundColor: Colors.blue[100],
              textColor: Colors.orange,
              textWeight: FontWeight.w500,
              textSize: 18,
              textFontStyle: FontStyle.normal,
            ),
            'Custom text',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: UpText(
            'Color type text',
          ),
        ),
      ],
    );
  }
}
