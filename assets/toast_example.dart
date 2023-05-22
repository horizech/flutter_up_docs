import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/enums/up_toast_type.dart';
import 'package:flutter_up/helpers/up_toast.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';

Widget toast(context) {
  return Wrap(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.primary,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Place your message here",
            );
          },
          text: "Primary Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.secondary,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Place your message here",
              upToastType: UpToastType.secondary,
            );
          },
          text: "Secondary Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.warn,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Oops!! its an error",
              upToastType: UpToastType.danger,
            );
          },
          text: "Danger Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.success,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Hurrah! Login successfully",
              upToastType: UpToastType.success,
            );
          },
          text: "Success Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.warn,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "There is a problem with your network connection",
              upToastType: UpToastType.warning,
            );
          },
          text: "Warning Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          colorType: UpColorType.tertiary,
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Please read the comments carefully",
              upToastType: UpToastType.info,
            );
          },
          text: "Info Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(
            buttonBackgroundColor: Colors.white,
            buttonBorderColor: Colors.black,
            buttonTextColor: Colors.black,
            buttonHoverBackgroundColor: Colors.transparent,
            buttonHoverBorderColor: Colors.black,
            buttonHoverTextColor: Colors.black,
          ),
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Its a light toast",
              upToastType: UpToastType.light,
            );
          },
          text: "Light Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(
              buttonBackgroundColor: Colors.black,
              buttonTextColor: Colors.white,
              buttonBorderColor: Colors.black,
              buttonHoverBorderColor: Colors.transparent,
              buttonHoverBackgroundColor: Colors.transparent),
          onPressed: () {
            UpToast().showToast(
              context: context,
              text: "Its a dark toast",
              upToastType: UpToastType.dark,
            );
          },
          text: "Dark Toast",
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: UpButton(
          style: UpStyle(
            buttonBackgroundColor: Colors.amberAccent,
            buttonBorderColor: Colors.amber[200],
            buttonHoverBackgroundColor: Colors.amber[100],
            buttonHoverBorderColor: Colors.amber,
          ),
          onPressed: () {
            UpToast().showToast(
              upToastType: UpToastType.custom,
              context: context,
              text: "Its a customized toast",
              isRounded: true,
              borderRadius: 18,
              style: UpStyle(
                  toastBackgroundColor: Colors.amberAccent[100],
                  toastTextColor: Colors.amberAccent),
              padding: const EdgeInsets.all(15),
              icon: const Icon(Icons.access_time),
            );
          },
          text: "Customized Toast",
        ),
      ),
    ],
  );
}
