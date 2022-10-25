import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_label_value.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/widgets/up_code.dart';
import 'package:flutter_up/widgets/up_drop_down_menu.dart';

List<UpLabelValuePair> _themes = [
  UpLabelValuePair(label: 'Light', value: "${UpThemes.light.id}"),
  UpLabelValuePair(label: 'Dark', value: "${UpThemes.dark.id}"),
  UpLabelValuePair(label: 'Light Red', value: "${UpThemes.lightRed.id}"),
  UpLabelValuePair(label: 'Light Blue', value: "${UpThemes.lightBlue.id}"),
  UpLabelValuePair(label: 'Light Yellow', value: "${UpThemes.lightYellow.id}"),
  UpLabelValuePair(label: 'Vintage', value: "${UpThemes.vintage.id}"),
];

class ThemeView extends StatefulWidget {
  const ThemeView({Key? key}) : super(key: key);

  @override
  State<ThemeView> createState() => _ThemesPageState();
}

class _ThemesPageState extends State<ThemeView> {
  String _themeId = _themes.first.value;
  _onChange(value) {
    UpThemes.setTheme(context, int.parse(value));
    _themeId = value;
  }

  Widget _themeCodes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "Initialize FlutterUp predefined theme collection and use UpThemes"),
        ),
        UpCode(
          assetCode: "app.dart",
          codeHeight: 400,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "You can also use your own theme collection.For this first you need to create UpThemeData file by passing theme id and theme data."),
        ),
        UpCode(
          assetCode: "up_theme_data_Example.dart",
          codeHeight: 320,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "Now pass your UpThemeData list and your fallbackTheme to generateThemeCollection() and initialize themecollection and defaultThemeId in FlutterUpApp. In case you not initialize it FlutterUp will use its predefined themes"),
        ),
        UpCode(
          code: ''' themeCollection: UpThemes.generateThemeCollection(
        themes: [lightpurple],
        fallbackTheme: ThemeData.light(),
      ),
      defaultThemeId: lightpurple.id,''',
          codeHeight: 150,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              "Use setTheme( ) function to set theme by passing context and theme id to it"),
        ),
        UpCode(
          code: '''  UpThemes.setTheme(context, UpThemes.dark.id);''',
          codeHeight: 80,
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
          const Text(
            "Flutter Up Themes",
            style: TextStyle(fontSize: 25),
          ),
          UpDropDownMenuWidget(
            value: _themeId,
            itemList: _themes,
            onChanged: (value) => _onChange(value),
          ),
          _themeCodes(),
        ],
      ),
    );
  }
}
