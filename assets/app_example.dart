import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/codes/drawer/drawer_example.dart';

class AppExample extends StatelessWidget {
  const AppExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UpScaffold(
      drawer: const DrawerExample(),
      appBar: const UpAppBar(
        title: "Drawer Example",
      ),
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: const Center(
          child: UpText("App body"),
        ),
      ),
    );
  }
}
