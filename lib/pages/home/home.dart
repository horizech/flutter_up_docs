import 'package:flutter/material.dart';
import 'package:flutter_up_docs/pages/button.dart';
import 'package:flutter_up_docs/enum/menu_option.dart';
import 'package:flutter_up_docs/pages/checkbox.dart';
import 'package:flutter_up_docs/pages/starting_page.dart';
import 'package:flutter_up_docs/pages/textfield.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _selectPage(currentSelection) {
    switch (currentSelection) {
      case MenuOption.button:
        return const ButtonPage();
      case MenuOption.textfield:
        return const TextFieldPage();
      case MenuOption.checkbox:
        return const CheckboxPage();
      default:
        return const StartingPage();
    }
  }

  MenuOption currentSelection = MenuOption.start;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter_up Documentation"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey[100],
            width: 300,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  color: currentSelection == MenuOption.start
                      ? Colors.blue
                      : Colors.transparent,
                  child: ListTile(
                    leading: const Icon(Icons.start_outlined),
                    title: Text(
                      "Getting Started",
                      style: TextStyle(
                          color: currentSelection == MenuOption.start
                              ? Colors.white
                              : Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        currentSelection = MenuOption.start;
                      });
                    },
                  ),
                ),
                const ExpansionTile(
                  leading: Icon(Icons.design_services),
                  title: Text("Services"),
                  children: [],
                ),
                ExpansionTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Widgets"),
                  children: [
                    Container(
                      color: currentSelection == MenuOption.button
                          ? Colors.blue
                          : Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            currentSelection = MenuOption.button;
                          });
                        },
                        leading: const Text(""),
                        title: Text(
                          "Buttons ",
                          style: TextStyle(
                              color: currentSelection == MenuOption.button
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      color: currentSelection == MenuOption.textfield
                          ? Colors.blue
                          : Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            currentSelection = MenuOption.textfield;
                          });
                        },
                        leading: const Text(""),
                        title: Text(
                          "TextFields",
                          style: TextStyle(
                              color: currentSelection == MenuOption.textfield
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      color: currentSelection == MenuOption.checkbox
                          ? Colors.blue
                          : Colors.transparent,
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            currentSelection = MenuOption.checkbox;
                          });
                        },
                        leading: const Text(""),
                        title: Text(
                          "Checkbox",
                          style: TextStyle(
                              color: currentSelection == MenuOption.checkbox
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const ExpansionTile(
                  leading: Icon(Icons.color_lens),
                  title: Text("Themes"),
                  children: [],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _selectPage(currentSelection),
            ),
          ),
        ],
      ),
    );
  }
}
