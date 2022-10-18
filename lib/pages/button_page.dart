import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool isExamples = false, isApi = false, isOverview = true;
  _overview() {
    return Column(
      children: [
        const Text(
            "Flutter up buttons are elements enhanced with styling and ink ripples."),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text("Basic Buttons"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text("Elevated Button"),
                      const SizedBox(
                        width: 10,
                      ),
                      UpButton(
                        isRounded: true,
                        roundedBorderRadius: 3.0,
                        buttonType: UpButtonType.elevated,
                        onPress: () {},
                        child: const Text(
                          "Primary",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      UpButton(
                        isRounded: true,
                        roundedBorderRadius: 3.0,
                        buttonType: UpButtonType.elevated,
                        colorType: ColorType.basic,
                        onPress: () {},
                        child: const Text("Basic"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      UpButton(
                        isRounded: true,
                        roundedBorderRadius: 3.0,
                        buttonType: UpButtonType.elevated,
                        colorType: ColorType.accent,
                        onPress: () {},
                        child: const Text("Accent"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      UpButton(
                        isRounded: true,
                        roundedBorderRadius: 3.0,
                        buttonType: UpButtonType.elevated,
                        colorType: ColorType.warn,
                        onPress: () {},
                        child: const Text("Warn"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      UpButton(
                        isRounded: true,
                        roundedBorderRadius: 3.0,
                        isButtonDisable: true,
                        onPress: () {},
                        child: const Text("Disabled"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text("Text Button"),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  _api() {
    return const Text("api");
  }

  _examples() {
    return const Text("examples");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isOverview = true;
                      isApi = false;
                      isExamples = false;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            decoration: isOverview
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            color: isOverview ? Colors.blue : Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isApi = true;
                      isExamples = false;
                      isOverview = false;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Api",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            decoration: isApi
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            color: isApi ? Colors.blue : Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExamples = true;
                      isApi = false;
                      isOverview = false;
                    });
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Examples",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            decoration: isExamples
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            color: isExamples ? Colors.blue : Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            isOverview
                ? _overview()
                : isApi
                    ? _api()
                    : isExamples
                        ? _examples()
                        : _overview()
          ],
        ),
      ),
    );
  }
}
