import 'package:flutter/material.dart';
import 'package:flutter_up_docs/codes/drawer/drawer_example.dart';

class AppExample extends StatelessWidget {
  const AppExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerExample(),
      appBar: AppBar(
        title: const Text("Drawer Example"),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: const Center(
          child: Text("App body"),
        ),
      ),
    );
  }
}
