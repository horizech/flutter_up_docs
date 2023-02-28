import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_input_type.dart';
import 'package:flutter_up/themes/up_style.dart';

import 'package:flutter_up/models/up_label_value.dart';
import 'package:flutter_up/widgets/up_dropdown.dart';
import 'package:flutter_up/widgets/up_text.dart';

List<UpLabelValuePair> _items = [
  UpLabelValuePair(
    label: 'Item 1',
    value: '1',
  ),
  UpLabelValuePair(
    label: 'Item 2',
    value: '2',
  ),
  UpLabelValuePair(
    label: 'Item 3',
    value: '3',
  ),
];

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({Key? key}) : super(key: key);

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  String _currentSelection = _items.first.value;
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
          UpDropDown(
            type: UpInputType.outline,
            style: UpStyle(
              dropdownBorderColor: Colors.red,
              dropdownBorderRadius: 5,
              dropdownBorderWidth: 1,
              dropdownFocusedBorderColor: Colors.purple,
              dropdownErrorBorderColor: Colors.red,
              dropdownLabelColor: Colors.orange,
              dropdownLabelSize: 17,
              dropdownFilledColor: Colors.cyan[100],
            ),
            label: 'Item',
            value: _currentSelection,
            itemList: _items,
            onChanged: (value) => _onChange(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UpText("Current Item is $_currentSelection"),
          )
        ],
      ),
    );
  }
}
