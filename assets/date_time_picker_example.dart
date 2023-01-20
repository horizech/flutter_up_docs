import 'package:flutter/material.dart';
import 'package:flutter_up/enums/up_color_type.dart';
import 'package:flutter_up/helpers/up_date_time.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_textfield.dart';

class DateTimepicker extends StatefulWidget {
  const DateTimepicker({Key? key}) : super(key: key);

  @override
  State<DateTimepicker> createState() => _DateTimepickerState();
}

class _DateTimepickerState extends State<DateTimepicker> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  _datePicker() async {
    DateTime? pickedDate = await upDatePicker(
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
    TimeOfDay? pickedTime = await upTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 12, minute: 0),
    );

    setState(() {
      timeController.text = pickedTime.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
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
          child: UpTextField(
              colorType: UpColorType.secondary,
              style: UpStyle(
                timePickerDialogBackgroundColor: Colors.amber,
                timePickerOnPrimaryColor: Colors.red,
                timePickerOnSurfaceColor: Colors.orange,
                timePickerPrimaryColor: Colors.cyan,
                timePickerSurfaceColor: Colors.green,
              ),
              controller: timeController,
              prefixIcon: const Icon(Icons.calendar_today),
              label: "Time picker",
              onTap: () {
                _timePicker();
              }),
        ),
      ],
    ));
  }
}
