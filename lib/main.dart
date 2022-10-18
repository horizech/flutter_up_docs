import 'package:flutter/material.dart';
import 'package:flutter_up_docs/pages/button_page.dart';
import 'package:flutter_up_docs/pages/enum/menu_option.dart';
import 'package:flutter_up_docs/pages/starting_page.dart';
import 'package:flutter_up_docs/pages/textfield_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter_up_docs',
      home: HomePage(),

      // routes: {
      //   HomePage.routeName: (context) => const HomePage(),
      // },
      // title: 'Flutter_up_docs',
      // home: const HomePage(),
    );
  }
}

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
            color: Colors.blue[200],
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
                    title: const Text("Getting Started"),
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
                        title: const Text("Buttons"),
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
                        title: const Text("TextFields"),
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
            child: _selectPage(currentSelection),
          ),
        ],
      ),
    );
  }
}
