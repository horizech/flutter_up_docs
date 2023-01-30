import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/models/up_label_value.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/themes/up_theme_data.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/widgets/up_code.dart';

import 'package:flutter_up/widgets/up_dropdown.dart';
import 'package:flutter_up/widgets/up_text.dart';

List<UpLabelValuePair> _themes = [
  UpLabelValuePair(label: 'Select ', value: "Default"),

  UpLabelValuePair(label: 'Purple', value: "1"),
  UpLabelValuePair(label: 'Orange', value: "2"),
  // UpLabelValuePair(label: 'Red', value: "${UpThemes.lightRed.id}"),
  // UpLabelValuePair(label: 'Blue', value: "${UpThemes.lightBlue.id}"),
  // UpLabelValuePair(label: 'Yellow', value: "${UpThemes.lightYellow.id}"),
  // UpLabelValuePair(label: 'Vintage', value: "${UpThemes.vintage.id}"),
];

class ThemeView extends StatefulWidget {
  final Function? onChange;
  const ThemeView({Key? key, this.onChange}) : super(key: key);

  @override
  State<ThemeView> createState() => _ThemesPageState();
}

class _ThemesPageState extends State<ThemeView> {
  String _themeId = _themes.first.value;
  _onChange(String id) {
    UpThemeData theme = UpThemes.generateThemeByColor(
      primaryColor: getColorById(int.parse(id)),
    );
    UpConfig.changeTheme(context, theme);
    if (widget.onChange != null) {
      widget.onChange!();
    }
    setState(() {
      _themeId = id;
    });
  }

  Color getColorById(int id) {
    switch (id) {
      case 1:
        return Colors.purple;
      case 2:
        return Colors.orange;
      default:
        return Colors.transparent;
    }
  }

  Widget _themeCodes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
              "Initialize theme in FlutterUpApp by generating UpThemeData."),
        ),
        UpCode(
          assetCode: "app.dart",
          height: 1000,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
              "You can also create your own UpThemeData.For this first you need to create UpThemeData file by filling all UpThemeData parameters."),
        ),
        UpCode(
          assetCode: "up_theme_data_Example.dart",
          height: 320,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText("Now pass your UpThemeData in FlutterUpApp. "),
        ),
        UpCode(
          code: ''' FlutterUpApp(  
                       theme: lightpurple,
             )''',
          height: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText("In case you want to change theme use"),
        ),
        UpCode(
          code: '''   UpConfig.changeTheme(context, upThemeData); ''',
          height: 80,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpText(
            "Flutter Up Themes",
            style: UpStyle(textFontSize: 25),
          ),
          UpDropDown(
            value: _themeId,
            label: "Color",
            itemList: _themes,
            onChanged: (g) => _onChange(g ?? ""),
          ),
          _themeCodes(),
        ],
      ),
    );
  }
}
