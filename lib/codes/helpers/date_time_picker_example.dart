import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_button_type.dart';
import 'package:flutter_up/enums/up_color_type.dart';

import 'package:flutter_up/helpers/up_datetime_helper.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

class DateTimepickerExample extends StatefulWidget {
  const DateTimepickerExample({Key? key}) : super(key: key);

  @override
  State<DateTimepickerExample> createState() => _DateTimepickerExampleState();
}

class _DateTimepickerExampleState extends State<DateTimepickerExample> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  _datePicker() async {
    DateTime? pickedDate = await UpDateTimeHelper.upDatePicker(
      context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    setState(() {
      dateController.text = pickedDate.toString();
    });
  }

  _timePicker() async {
    TimeOfDay? pickedTime = await UpDateTimeHelper.upTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 12, minute: 0),
    );

    setState(() {
      timeController.text = pickedTime.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpTextField(
              colorType: UpColorType.primary,
              controller: dateController,
              // in case custom date picker style
              // style: UpStyle(
              //   datePickerDialogBackgroundColor: Colors.grey[200],
              //   datePickerOnPrimaryColor: Colors.purple,
              //   datePickerOnSurfaceColor: Colors.red,
              //   datePickerPrimaryColor: Colors.orange,
              //   datePickerSurfaceColor: Colors.black45
              // ),
              prefixIcon: const Icon(Icons.calendar_today),
              label: "Date picker",
              onTap: () {
                _datePicker();
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const UpText('Time Picker'),
              UpButton(
                  type: UpButtonType.icon,
                  colorType: UpColorType.secondary,
                  style: UpStyle(
                    timePickerDialogBackgroundColor: Colors.amber,
                    timePickerOnPrimaryColor: Colors.red,
                    timePickerOnSurfaceColor: Colors.orange,
                    timePickerPrimaryColor: Colors.cyan,
                    timePickerSurfaceColor: Colors.green,
                  ),
                  text: "Time picker",
                  onPressed: () {
                    _timePicker();
                  },
                  child: const Icon(
                    Icons.calendar_today,
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
