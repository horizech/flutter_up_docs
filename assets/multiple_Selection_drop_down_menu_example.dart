import 'package:flutter/material.dart';

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

class MultipleSelectionDropDownMenu extends StatefulWidget {
  const MultipleSelectionDropDownMenu({Key? key}) : super(key: key);

  @override
  State<MultipleSelectionDropDownMenu> createState() =>
      _MultipleSelectionDropDownMenuState();
}

class _MultipleSelectionDropDownMenuState
    extends State<MultipleSelectionDropDownMenu> {
  List<String> currentSelections = [_items.first.value];
  _onChange(value) {
    setState(() {
      currentSelections = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpDropDown(
            isMultipleSelect: true,
            label: 'Item',
            values: currentSelections,
            itemList: _items,
            onMultipleChanged: (value) => _onChange(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UpText("Current Items are $currentSelections "),
          )
        ],
      ),
    );
  }
}
