import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpTextExample extends StatelessWidget {
  const UpTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: UpText(
        'Simple text',
      ),
    );
  }
}
