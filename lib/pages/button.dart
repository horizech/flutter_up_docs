import 'package:flutter/material.dart';
import 'package:flutter_up_docs/codes/buttons/elevated_button_example.dart';
import 'package:flutter_up_docs/codes/buttons/floating_button_example.dart';
import 'package:flutter_up_docs/codes/buttons/icon_button_example.dart';
import 'package:flutter_up_docs/codes/buttons/outlined_button_example.dart';
import 'package:flutter_up_docs/codes/buttons/text_button_Example.dart';
import 'package:flutter_up_docs/widgets/up_code.dart';
import 'package:flutter_up_docs/widgets/widget_box.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Flutter up buttons are elements enhanced with styling and ink ripples."),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Elevated Button",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: elevatedButtons(),
              code: const UpCode(
                assetCode: 'elevated_button_example.dart',
                codeHeight: 1140,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
              ),
              child: Divider(
                color: Colors.black,
                height: 10,
                thickness: 1.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Outlined Buttons",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: outlinedButtons(),
              code: const UpCode(
                assetCode: 'outlined_button_example.dart',
                codeHeight: 1140,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
              ),
              child: Divider(
                color: Colors.black,
                height: 10,
                thickness: 1.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Text Buttons",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: textButtons(),
              code: const UpCode(
                assetCode: 'text_button_example.dart',
                codeHeight: 1140,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
              ),
              child: Divider(
                color: Colors.black,
                height: 10,
                thickness: 1.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Icon Buttons",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: iconButtons(),
              code: const UpCode(
                assetCode: 'icon_button_example.dart',
                codeHeight: 1280,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50.0,
              ),
              child: Divider(
                color: Colors.black,
                height: 10,
                thickness: 1.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Floating Buttons",
                style: TextStyle(fontSize: 20),
              ),
            ),
            widgetBox(
              example: floatingButtons(),
              code: const UpCode(
                assetCode: 'floating_button_example.dart',
                codeHeight: 1250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           currentView = ViewOption.overview;
            //         });
            //       },
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "Overview",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //                 decoration: currentView == ViewOption.overview
            //                     ? TextDecoration.underline
            //                     : TextDecoration.none,
            //                 color: currentView == ViewOption.overview
            //                     ? Colors.blue
            //                     : Colors.black),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 50,
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           currentView = ViewOption.api;
            //         });
            //       },
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Api",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //                 decoration: currentView == ViewOption.api
            //                     ? TextDecoration.underline
            //                     : TextDecoration.none,
            //                 color: currentView == ViewOption.api
            //                     ? Colors.blue
            //                     : Colors.black),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 50,
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           currentView = ViewOption.examples;
            //         });
            //       },
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Examples",
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //                 decoration: currentView == ViewOption.examples
            //                     ? TextDecoration.underline
            //                     : TextDecoration.none,
            //                 color: currentView == ViewOption.examples
            //                     ? Colors.blue
            //                     : Colors.black),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 50,
            // ),

 // // ViewOption currentView = ViewOption.overview;
  // _buttonView() {

  // }

  // _api() {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Column(
  //       children: const [],
  //     ),
  //   );
  // }

  // _examples() {
  //   return const Text("examples");
  // }

  // _selectView(currentView) {
  //   switch (currentView) {
  //     case ViewOption.overview:
  //       return _overview();

  //     case ViewOption.api:
  //       return _api();

  //     case ViewOption.examples:
  //       return _examples();

  //     default:
  //       return _overview();
  //   }
  // }
