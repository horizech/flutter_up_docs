import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/models/up_label_value.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/themes/up_theme_data.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/widgets/up_button.dart';
import 'package:flutter_up/widgets/up_checkbox.dart';
import 'package:flutter_up/widgets/up_code.dart';

import 'package:flutter_up/widgets/up_dropdown.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/widgets/color_dialog.dart';

List<UpLabelValuePair> _themes = [
  UpLabelValuePair(label: 'Select', value: "Default"),
  UpLabelValuePair(label: 'Purple (Light)', value: "1"),
  UpLabelValuePair(label: 'Orange (Light)', value: "2"),
  UpLabelValuePair(label: 'Purple (Dark)', value: "3"),
  UpLabelValuePair(label: 'Orange (Dark)', value: "4"),
  UpLabelValuePair(label: 'Custom', value: "5"),
];

class ThemeView extends StatefulWidget {
  final Function? onChange;
  const ThemeView({Key? key, this.onChange}) : super(key: key);

  @override
  State<ThemeView> createState() => _ThemesPageState();
}

class _ThemesPageState extends State<ThemeView> {
  String _themeId = _themes.first.value;
  dynamic primaryColor;
  dynamic secondaryColor;
  bool isDark = false;
  dynamic tertiarayColor, warnColor, successColor, linkColor;

  _onChange(String id) {
    if (id == "5") {
      _customDialog();
    } else if (id == "1" || id == "2") {
      UpThemeData theme = UpThemes.generateThemeByColor(
        baseColor: Colors.white,
        primaryColor: getColorById(int.parse(id)),
        secondaryColor: UpConfig.of(context).theme.secondaryColor,
        tertiaryColor: UpConfig.of(context).theme.tertiaryColor,
        warnColor: UpConfig.of(context).theme.warnColor,
        linkColor: UpConfig.of(context).theme.linkColor,
        successColor: UpConfig.of(context).theme.successColor,
      );
      UpConfig.changeTheme(context, theme);
      if (widget.onChange != null) {
        widget.onChange!();
      }
      setState(() {
        _themeId = id;
      });
    } else if (id == "3" || id == "4") {
      UpThemeData theme = UpThemes.generateThemeByColor(
        baseColor: const Color.fromARGB(255, 25, 23, 30),
        isDark: true,
        primaryColor: getColorById(int.parse(id)),
        secondaryColor: UpConfig.of(context).theme.secondaryColor,
        tertiaryColor: UpConfig.of(context).theme.tertiaryColor,
        warnColor: UpConfig.of(context).theme.warnColor,
        linkColor: UpConfig.of(context).theme.linkColor,
        successColor: UpConfig.of(context).theme.successColor,
      );
      UpConfig.changeTheme(context, theme);
      if (widget.onChange != null) {
        widget.onChange!();
      }
      setState(() {
        _themeId = id;
      });
    }
  }

  Color getColorById(int id) {
    switch (id) {
      case 1:
      case 3:
        return Colors.purple;
      case 4:
      case 2:
        return Colors.orange;
      default:
        return Colors.transparent;
    }
  }

  _customDialog() {
    return showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, StateSetter setState) {
            return AlertDialog(
              backgroundColor: UpConfig.of(context).theme.baseColor,
              title: const Text('Custom Theme'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: UpButton(
                          style: UpStyle(
                              buttonHoverBorderColor: primaryColor ??
                                  UpConfig.of(context).theme.primaryColor,
                              buttonHoverBackgroundColor: primaryColor ??
                                  UpConfig.of(context).theme.primaryColor,
                              buttonBorderColor: primaryColor ??
                                  UpConfig.of(context).theme.primaryColor,
                              buttonBackgroundColor: primaryColor ??
                                  UpConfig.of(context).theme.primaryColor),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                      builder: (context, StateSetter setState) {
                                    return const ColorPickerDialog();
                                  });
                                }).then((pickedColor) {
                              if (pickedColor != null) {
                                primaryColor = pickedColor;
                                setState(() {});
                                return primaryColor;
                              }
                            });
                          },
                          text: "Primary",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpButton(
                        style: UpStyle(
                            buttonHoverBorderColor: secondaryColor ??
                                UpConfig.of(context).theme.secondaryColor,
                            buttonHoverBackgroundColor: secondaryColor ??
                                UpConfig.of(context).theme.secondaryColor,
                            buttonBorderColor: secondaryColor ??
                                UpConfig.of(context).theme.secondaryColor,
                            buttonBackgroundColor: secondaryColor ??
                                UpConfig.of(context).theme.secondaryColor),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return const ColorPickerDialog();
                                });
                              }).then((pickedColor) {
                            if (pickedColor != null) {
                              secondaryColor = pickedColor;
                              setState(() {});
                            }
                          });
                        },
                        text: "Secondary",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpButton(
                        style: UpStyle(
                            buttonHoverBorderColor: tertiarayColor ??
                                UpConfig.of(context).theme.tertiaryColor,
                            buttonHoverBackgroundColor: tertiarayColor ??
                                UpConfig.of(context).theme.tertiaryColor,
                            buttonBorderColor: tertiarayColor ??
                                UpConfig.of(context).theme.tertiaryColor,
                            buttonBackgroundColor: tertiarayColor ??
                                UpConfig.of(context).theme.tertiaryColor),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return const ColorPickerDialog();
                                });
                              }).then((pickedColor) {
                            if (pickedColor != null) {
                              tertiarayColor = pickedColor;
                              setState(() {});
                            }
                          });
                        },
                        text: "Tertiary",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpButton(
                        style: UpStyle(
                            buttonHoverBorderColor: warnColor ??
                                UpConfig.of(context).theme.warnColor,
                            buttonHoverBackgroundColor: warnColor ??
                                UpConfig.of(context).theme.warnColor,
                            buttonBorderColor: warnColor ??
                                UpConfig.of(context).theme.warnColor,
                            buttonBackgroundColor: warnColor ??
                                UpConfig.of(context).theme.warnColor),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return const ColorPickerDialog();
                                });
                              }).then((pickedColor) {
                            if (pickedColor != null) {
                              warnColor = pickedColor;
                              setState(() {});
                            }
                          });
                        },
                        text: "Warn",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpButton(
                        style: UpStyle(
                            buttonHoverBorderColor: linkColor ??
                                UpConfig.of(context).theme.linkColor,
                            buttonHoverBackgroundColor: linkColor ??
                                UpConfig.of(context).theme.linkColor,
                            buttonBorderColor: linkColor ??
                                UpConfig.of(context).theme.linkColor,
                            buttonBackgroundColor: linkColor ??
                                UpConfig.of(context).theme.linkColor),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return const ColorPickerDialog();
                                });
                              }).then((pickedColor) {
                            if (pickedColor != null) {
                              linkColor = pickedColor;
                              setState(() {});
                            }
                          });
                        },
                        text: "Link",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpButton(
                        style: UpStyle(
                            buttonHoverBorderColor: successColor ??
                                UpConfig.of(context).theme.successColor,
                            buttonHoverBackgroundColor: successColor ??
                                UpConfig.of(context).theme.successColor,
                            buttonBorderColor: successColor ??
                                UpConfig.of(context).theme.successColor,
                            buttonBackgroundColor: successColor ??
                                UpConfig.of(context).theme.successColor),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter setState) {
                                  return const ColorPickerDialog();
                                });
                              }).then((pickedColor) {
                            if (pickedColor != null) {
                              successColor = pickedColor;
                              setState(() {});
                            }
                          });
                        },
                        text: "Success",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UpCheckbox(
                        initialValue: isDark,
                        label: "Dark mode",
                        onChange: (value) {
                          isDark = value;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 80,
                    child: UpButton(
                      text: 'Apply',
                      onPressed: () {
                        Navigator.of(context).pop();

                        UpThemeData theme = UpThemes.generateThemeByColor(
                          baseColor: isDark
                              ? const Color.fromARGB(255, 25, 23, 30)
                              : Colors.white,
                          isDark: isDark,
                          primaryColor: primaryColor ??
                              UpConfig.of(context).theme.primaryColor,
                          secondaryColor: secondaryColor ??
                              UpConfig.of(context).theme.secondaryColor,
                          tertiaryColor: tertiarayColor ??
                              UpConfig.of(context).theme.tertiaryColor,
                          warnColor:
                              warnColor ?? UpConfig.of(context).theme.warnColor,
                          linkColor:
                              linkColor ?? UpConfig.of(context).theme.linkColor,
                          successColor: successColor ??
                              UpConfig.of(context).theme.successColor,
                        );
                        UpConfig.changeTheme(context, theme);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 80,
                    child: UpButton(
                      text: 'Cancel',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            );
          });
        });
  }

  Widget _themeCodes() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: UpText(
              "Initialize theme in FlutterUpApp by generating UpThemeData."),
        ),
        UpCode(
          assetCode: "assets/app.dart",
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
          assetCode: "assets/up_theme_data_Example.dart",
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
            style: UpStyle(textSize: 25),
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
