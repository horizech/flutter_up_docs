import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/widgets/up_button.dart';

class ColorPickerDialog extends StatelessWidget {
  final Color pickedColor;
  const ColorPickerDialog({
    Key? key,
    this.pickedColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color pickerColor = pickedColor;
    void changeColor(Color color) {
      pickerColor = color;
    }

    return AlertDialog(
      title: const Text('Pick a color!'),
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: pickerColor,
          onColorChanged: changeColor,
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: 100,
          child: UpButton(
            colorType: UpColorType.secondary,
            text: 'Pick',
            onPressed: () {
              Navigator.pop(context, pickerColor);
            },
          ),
        ),
      ],
    );
  }
}
