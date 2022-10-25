import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_toast_type.dart';
import 'package:flutter_up/helpers/up_toast.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget toast(context) {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Place your message here",
            );
          },
          child: const Text("Primary Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
                context: context,
                text: "Place your message here",
                upToastType: UpToastType.secondary);
          },
          child: const Text("Secondary Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Oops!! its an error",
              upToastType: UpToastType.danger,
            );
          },
          child: const Text("Danger Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Hurrah! Login successfully",
              upToastType: UpToastType.success,
            );
          },
          child: const Text("Success Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "There is a problem with your network connection",
              upToastType: UpToastType.warning,
            );
          },
          child: const Text("Warning Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Please read the comments carefully",
              upToastType: UpToastType.info,
            );
          },
          child: const Text("Info Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Its a light toast",
              upToastType: UpToastType.light,
            );
          },
          child: const Text("Light Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Its a dark toast",
              upToastType: UpToastType.dark,
            );
          },
          child: const Text("Dark Toast"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          onPress: () {
            showUpToast(
              context: context,
              text: "Its a customized toast",
              isRounded: true,
              borderRadius: 18,
              padding: const EdgeInsets.all(15),
              icon: const Icon(Icons.access_time),
            );
          },
          child: const Text("Customized Toast"),
        ),
      ),
    ],
  );
}
