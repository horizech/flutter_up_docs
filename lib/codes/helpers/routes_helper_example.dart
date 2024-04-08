import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up/helpers/up_routes_helper.dart';

class RoutesHelperExample extends StatelessWidget {
  const RoutesHelperExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Current path: ",
              ),
              UpText(UpRoutesHelper.getCurrentPath(context)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Current named path : ",
              ),
              UpText(UpRoutesHelper.getCurrentNamedPath(context)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              const UpText(
                "Current Uri: ",
              ),
              UpText(UpRoutesHelper.getCurrentUri(context).toString()),
            ],
          ),
        ),
      ],
    );
  }
}
