import 'package:flutter/material.dart';
import 'package:flutter_up/widgets/up_radio.dart';

class Radios extends StatefulWidget {
  const Radios({Key? key}) : super(key: key);

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  String _groupValue = "male";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpRadio(
            label: "Male",
            value: "male",
            groupValue: _groupValue,
            onChange: (radioValue) {
              setState(() {
                _groupValue = radioValue;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: UpRadio(
            label: "Female",
            value: "female",
            groupValue: _groupValue,
            onChange: (radioValue) {
              setState(() {
                _groupValue = radioValue;
              });
            },
          ),
        )
      ],
    );
  }
}
// Widget radios() {
//   return Wrap(
//     children: [


//         //      UpRadio(
//         //       value: "Male",
//         //       isSelected: true,
//         //       groupValue: "gender",
//         //       onChange: () {},
//         //     )),
//         // Padding(
//         //   padding: const EdgeInsets.all(5.0),
//         //   child: UpRadio(
//         //     value: "Female",
//         //     isSelected: false,
//         //     groupValue: "gender",
//         //     onChange: () {},
//         //   ),
//         // ),
//       ),
//     ],
//   );
// }
