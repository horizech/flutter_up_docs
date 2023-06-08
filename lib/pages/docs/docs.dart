import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up_docs/enum/menu_option.dart';
import 'package:flutter_up_docs/views/dialogs/about_dialog.dart';
import 'package:flutter_up_docs/views/dialogs/action_dialog.dart';
import 'package:flutter_up_docs/views/dialogs/custom_dialog.dart';
import 'package:flutter_up_docs/views/dialogs/info_dialog.dart';
import 'package:flutter_up_docs/views/helpers/console.dart';
import 'package:flutter_up_docs/views/helpers/copy_to_clipboard.dart';
import 'package:flutter_up_docs/views/helpers/date_time.dart';
import 'package:flutter_up_docs/views/helpers/layout.dart';
import 'package:flutter_up_docs/views/helpers/security.dart';
import 'package:flutter_up_docs/views/helpers/toast.dart';
import 'package:flutter_up_docs/views/services/dialog.dart';
import 'package:flutter_up_docs/views/services/navigation.dart';
import 'package:flutter_up_docs/views/services/search.dart';
import 'package:flutter_up_docs/views/services/url.dart';
import 'package:flutter_up_docs/views/widgets/app_bar.dart';
import 'package:flutter_up_docs/views/widgets/button.dart';
import 'package:flutter_up_docs/views/widgets/card.dart';
import 'package:flutter_up_docs/views/widgets/checkbox.dart';
import 'package:flutter_up_docs/views/widgets/circular_progress.dart';
import 'package:flutter_up_docs/views/widgets/drop_down_menu.dart';
import 'package:flutter_up_docs/views/widgets/expansion_tile.dart';
import 'package:flutter_up_docs/views/widgets/icon.dart';
import 'package:flutter_up_docs/views/widgets/list_tile.dart';
import 'package:flutter_up_docs/views/widgets/orientational_column_row.dart';
import 'package:flutter_up_docs/views/starting/starting.dart';
import 'package:flutter_up_docs/views/theme/theme.dart';
import 'package:flutter_up_docs/views/widgets/drawer.dart';
import 'package:flutter_up_docs/views/widgets/radio.dart';
import 'package:flutter_up_docs/views/widgets/scaffold.dart';
import 'package:flutter_up_docs/views/widgets/table.dart';
import 'package:flutter_up_docs/views/widgets/text.dart';
import 'package:flutter_up_docs/views/widgets/textfield.dart';
import 'package:flutter_up_docs/views/widgets/toast.dart';
import 'package:flutter_up_docs/views/widgets/up_code.dart';

class DocsPage extends StatefulWidget {
  static const routeName = '/docs';
  final Map<String, String>? queryParms;
  const DocsPage({Key? key, this.queryParms}) : super(key: key);

  @override
  State<DocsPage> createState() => _DocsPageState();
}

class _DocsPageState extends State<DocsPage> {
  onThemeChange() {
    setState(() {});
  }

  Color? secondaryColor;
  Color? primaryColor;
  Color? baseColor;
  MenuOption currentSelection = MenuOption.start;
  _selectView(currentSelection) {
    switch (currentSelection) {
      //Theme view
      case MenuOption.theme:
        return ThemeView(onChange: () => onThemeChange());

      //widgets view
      case MenuOption.button:
        return const ButtonView();
      case MenuOption.textfield:
        return const TextFieldView();
      case MenuOption.checkbox:
        return const CheckboxView();
      case MenuOption.radio:
        return const RadioView();
      case MenuOption.card:
        return const CardView();
      case MenuOption.dropDownMenu:
        return const DropDownMenuView();
      case MenuOption.circularProgress:
        return const CircularProgressView();
      case MenuOption.drawer:
        return const DrawerItemCardView();
      case MenuOption.toast:
        return const ToastView();
      case MenuOption.orientationalColumnRow:
        return const OrientationalColumnRowView();
      case MenuOption.appbar:
        return const AppbarView();
      case MenuOption.expansionTile:
        return const ExpansionTileView();
      case MenuOption.upText:
        return const UpTextView();
      case MenuOption.icon:
        return const UpIconView();
      case MenuOption.upcode:
        return const UpCodeView();
      case MenuOption.listtile:
        return const ListTileView();
      case MenuOption.scaffold:
        return const ScaffoldView();
      case MenuOption.table:
        return const TableView();

      //helpers view
      case MenuOption.copyToClipboard:
        return const CopyToClipboardView();
      case MenuOption.console:
        return const ConsoleView();
      case MenuOption.toastH:
        return const HelperToastView();
      case MenuOption.dateTime:
        return const DateTimeView();
      case MenuOption.security:
        return const SecurityView();
      case MenuOption.layout:
        return const LayoutView();

      //Dialog views
      case MenuOption.customDialog:
        return const CustomDialogView();
      case MenuOption.actionDialog:
        return const ActionDialogView();
      case MenuOption.aboutDialog:
        return const AboutDialogView();
      case MenuOption.infoDialog:
        return const InfoDialogView();

      //service view
      case MenuOption.navigationService:
        return const NavigationServiceView();
      case MenuOption.urlService:
        return const UrlServiceView();
      case MenuOption.searchService:
        return const SearchServiceView();
      case MenuOption.dialogService:
        return const DialogServiceView();

      default:
        return const StartingView();
    }
  }

  Widget _listTileContainer({
    required MenuOption menuOption,
    IconData? iconData,
    required String text,
    required Function onTap,
  }) {
    // return UpListTile(
    //   title: text,
    //   listTileTitleAlignment: ListTileTitleAlignment.center,
    //   leading: Icon(
    //     iconData,
    //     color: currentSelection == menuOption
    //         ? secondaryColor
    //         : UpConfig.of(context).theme.baseColor.shade900,
    //   ),
    //   style: UpStyle(
    //     listTileTextColor: currentSelection == menuOption
    //         ? secondaryColor
    //         : UpConfig.of(context).theme.baseColor.shade900,
    //     listTileColor: currentSelection == menuOption
    //         ? primaryColor
    //         : UpConfig.of(context).theme.baseColor.shade50,
    //     listTileHoveredColor: currentSelection == menuOption
    //         ? primaryColor
    //         : UpConfig.of(context).theme.baseColor.shade100,
    //     listTileFocusedColor:
    //         currentSelection == menuOption ? primaryColor : Colors.transparent,
    //     // currentSelection == menuOption ? primaryColor : Colors.transparent,
    //   ),
    //   onTap: () {
    //     onTap();
    //   },
    // );
    return Container(
      color: currentSelection == menuOption
          ? primaryColor
          : UpConfig.of(context).theme.baseColor.shade50,
      child: ListTile(
        leading: Icon(
          iconData,
          color: currentSelection == menuOption
              ? secondaryColor
              : UpConfig.of(context).theme.baseColor.shade900,
        ),
        hoverColor: currentSelection == menuOption
            ? primaryColor
            : UpConfig.of(context).theme.baseColor.shade100,
        focusColor:
            currentSelection == menuOption ? primaryColor : Colors.transparent,
        title: UpText(
          text,
          style: UpStyle(
            textColor: currentSelection == menuOption
                ? secondaryColor
                : UpConfig.of(context).theme.baseColor.shade900,
          ),
        ),
        onTap: () {
          onTap();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    secondaryColor =
        UpThemes.getContrastColor(UpConfig.of(context).theme.primaryColor);
    primaryColor = UpConfig.of(context).theme.primaryColor;

    return UpScaffold(
      appBar: const UpAppBar(
        // backgroundColor: primaryColor,
        title: "FlutterUp Documentation",
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //left side
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: UpConfig.of(context).theme.baseColor.shade50,
              width: 300,
              height: MediaQuery.of(context).size.height - 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    _listTileContainer(
                      menuOption: MenuOption.start,
                      iconData: Icons.start_outlined,
                      text: "Getting Started",
                      onTap: () {
                        setState(
                          () {
                            currentSelection = MenuOption.start;
                          },
                        );
                      },
                    ),
                    _listTileContainer(
                      menuOption: MenuOption.theme,
                      iconData: Icons.color_lens,
                      text: "Theme",
                      onTap: () {
                        setState(
                          () {
                            currentSelection = MenuOption.theme;
                          },
                        );
                      },
                    ),
                    UpExpansionTile(
                      leading: const Icon(
                        Icons.design_services,
                      ),
                      title: "Services",
                      children: [
                        _listTileContainer(
                          menuOption: MenuOption.navigationService,
                          text: "Navigation",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.navigationService;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.dialogService,
                          text: "Dialog",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.dialogService;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.searchService,
                          text: "Search",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.searchService;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.urlService,
                          text: "Url",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.urlService;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    UpExpansionTile(
                      leading: const Icon(
                        Icons.widgets,
                      ),
                      title: "Widgets",
                      children: [
                        _listTileContainer(
                          menuOption: MenuOption.button,
                          text: "Buttons",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.button;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.textfield,
                          text: "Textfields",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.textfield;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.checkbox,
                          text: "Checkboxes",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.checkbox;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.dropDownMenu,
                          text: "Dropdown Menu",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.dropDownMenu;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.circularProgress,
                          text: "Circular Progress",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.circularProgress;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.radio,
                          text: "Radio Buttons",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.radio;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.card,
                          text: "Cards",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.card;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.table,
                          text: "Table",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.table;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.orientationalColumnRow,
                          text: "Orientational column row",
                          onTap: () {
                            setState(() {
                              currentSelection =
                                  MenuOption.orientationalColumnRow;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.toast,
                          text: "Toast",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.toast;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.appbar,
                          text: "AppBar",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.appbar;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.listtile,
                          text: "List Tile",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.listtile;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.expansionTile,
                          text: "Expansion Tile",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.expansionTile;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.upText,
                          text: "Text",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.upText;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.icon,
                          text: "Icon",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.icon;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.upcode,
                          text: "Code",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.upcode;
                            });
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.scaffold,
                          text: "Scaffold",
                          onTap: () {
                            setState(() {
                              currentSelection = MenuOption.scaffold;
                            });
                          },
                        ),
                      ],
                    ),
                    UpExpansionTile(
                      leading: const Icon(Icons.smart_screen),
                      title: "Dialogs",
                      children: [
                        _listTileContainer(
                          menuOption: MenuOption.aboutDialog,
                          text: "About",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.aboutDialog;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.infoDialog,
                          text: "Information",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.infoDialog;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.actionDialog,
                          text: "Action",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.actionDialog;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.customDialog,
                          text: "Custom",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.customDialog;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    UpExpansionTile(
                      leading: const Icon(Icons.help_outline),
                      title: "Helpers",
                      children: [
                        _listTileContainer(
                          menuOption: MenuOption.copyToClipboard,
                          text: "Copy to clipboard",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.copyToClipboard;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.console,
                          text: "Console",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.console;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.toastH,
                          text: "Toast",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.toastH;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.dateTime,
                          text: "Date Time",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.dateTime;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.security,
                          text: "Security",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.security;
                              },
                            );
                          },
                        ),
                        _listTileContainer(
                          menuOption: MenuOption.layout,
                          text: "Layout",
                          onTap: () {
                            setState(
                              () {
                                currentSelection = MenuOption.layout;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //right side
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _selectView(currentSelection),
            ),
          ),
        ],
      ),
    );
  }
}
