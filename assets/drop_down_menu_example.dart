import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_drop_down_menu.dart';
import 'package:flutter_up_docs/constants.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String _currentSelection = fruitItems.first.value;
  _onChange(value) {
    setState(() {
      _currentSelection = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpDropDownMenuWidget(
            value: _currentSelection,
            itemList: fruitItems,
            onChanged: (value) => _onChange(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Current selection is $_currentSelection"),
          )
        ],
      ),
    );
  }
}
