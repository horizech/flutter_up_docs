import 'package:flutter/material.dart';

import 'package:flutter_up/widgets/up_loading_button.dart';

Widget loadingButton() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: UpLoadingButton(
          isLoading: false,
          isError: false,
          text: "Button",
          isSuccess: false,
          onPress: () {
            //do something
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: UpLoadingButton(
          isLoading: true,
          isError: false,
          text: "Loading",
          isSuccess: false,
          onPress: () {
            //do something
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: UpLoadingButton(
          isLoading: false,
          isError: false,
          text: "Success",
          isSuccess: true,
          onPress: () {
            //do something
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
        child: UpLoadingButton(
          isLoading: false,
          isError: true,
          text: "Error",
          isSuccess: false,
          onPress: () {
            //do something
          },
        ),
      ),
    ],
  );
}
