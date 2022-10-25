import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_drop_down_menu.dart';

import 'package:flutter_up/models/up_label_value.dart';

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
          UpDropDownMenuWidget(
            // isDense: true,
            isExpanded: true,
            dropDownColor: Colors.grey[500],
            alignmnet: Alignment.topLeft,
            menuMaxHeight: 600,

            focusColor: Colors.red[200],
            underline: Container(
              height: 2,
              color: Colors.black,
            ),
            icon: const Icon(Icons.production_quantity_limits),
            value: _currentSelection,
            itemList: _items,
            onChanged: (value) => _onChange(value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Current Item is $_currentSelection"),
          )
        ],
      ),
    );
  }
}
