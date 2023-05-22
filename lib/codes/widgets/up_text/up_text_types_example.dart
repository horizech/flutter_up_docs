import 'package:flutter/material.dart';
import 'package:flutter_up/enums/text_style.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpTextTypesExample extends StatelessWidget {
  const UpTextTypesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading1,
            'Heading 1',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading2,
            'Heading 2',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading3,
            'Heading 3',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading4,
            'Heading 4',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading5,
            'Heading 5',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.heading6,
            'Heading 6',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
            type: UpTextType.paragraph,
            'Paragraph',
          ),
        ),
      ],
    );
  }
}
