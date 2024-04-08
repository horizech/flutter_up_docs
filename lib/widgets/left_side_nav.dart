import 'package:flutter/material.dart';
import 'package:flutter_up/locator.dart';
import 'package:flutter_up/services/up_navigation.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_card.dart';
import 'package:flutter_up/widgets/up_expansion_tile.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/enum/menu_option.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

class LeftDrawer extends StatefulWidget {
  final MenuOption currentSelection;
  final String currentMenu;

  const LeftDrawer({
    super.key,
    required this.currentMenu,
    required this.currentSelection,
  });

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  MenuOption currentSelection = MenuOption.start;
  @override
  Widget build(BuildContext context) {
    return //left side
        SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: UpCard(
        style: UpStyle(
          cardHeight: MediaQuery.of(context).size.height - 10,
          cardWidth: 300,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              UpListTile(
                leadingIcon: Icons.start_outlined,
                isSelected: widget.currentSelection == MenuOption.start,
                title: "Getting Started",
                onTap: () {
                  ServiceManager<UpNavigationService>()
                      .navigateToNamed(DocsPage.routeName);
                },
              ),
              UpListTile(
                leadingIcon: Icons.style,
                isSelected: widget.currentSelection == MenuOption.theme,
                title: "Theme",
                onTap: () {
                  ServiceManager<UpNavigationService>()
                      .navigateToNamed(Routes.theme);
                },
              ),
              UpExpansionTile(
                leading: const Icon(
                  Icons.design_services,
                ),
                title: "Services",
                initiallyExpanded: widget.currentMenu == "services",
                children: [
                  ...serviceOptions
                      .map((e) => UpListTile(
                            leadingIcon: null,
                            isSelected: widget.currentSelection == e.menuOption,
                            title: e.text,
                            onTap: () {
                              ServiceManager<UpNavigationService>()
                                  .navigateToNamed(e.route);
                            },
                          ))
                      .toList()
                ],
              ),
              UpExpansionTile(
                leading: const UpIcon(
                  icon: Icons.widgets,
                ),
                initiallyExpanded: widget.currentMenu == "widgets",
                title: Constants.widgets,
                children: [
                  ...widgetOptions
                      .map((e) => UpListTile(
                            leadingIcon: null,
                            isSelected: widget.currentSelection == e.menuOption,
                            title: e.text,
                            onTap: () {
                              ServiceManager<UpNavigationService>()
                                  .navigateToNamed(e.route);
                            },
                          ))
                      .toList()
                ],
              ),
              UpExpansionTile(
                leading: const Icon(Icons.smart_screen),
                title: "Dialog",
                initiallyExpanded: widget.currentMenu == "dialogs",
                children: [
                  ...dialogOptions
                      .map((e) => UpListTile(
                            leadingIcon: null,
                            isSelected: widget.currentSelection == e.menuOption,
                            title: e.text,
                            onTap: () {
                              ServiceManager<UpNavigationService>()
                                  .navigateToNamed(e.route);
                            },
                          ))
                      .toList()
                ],
              ),
              UpExpansionTile(
                leading: const Icon(Icons.help),
                title: "Helpers",
                initiallyExpanded: widget.currentMenu == "helpers",
                children: [
                  ...helperOptions
                      .map((e) => UpListTile(
                            leadingIcon: null,
                            isSelected: widget.currentSelection == e.menuOption,
                            title: e.text,
                            onTap: () {
                              ServiceManager<UpNavigationService>()
                                  .navigateToNamed(e.route);
                            },
                          ))
                      .toList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileOptions {
  final MenuOption menuOption;
  final String route;
  final String text;

  ListTileOptions(
      {required this.menuOption, required this.route, required this.text});
}

List<ListTileOptions> widgetOptions = [
  ListTileOptions(
    menuOption: MenuOption.scaffold,
    text: Constants.scaffold,
    route: Routes.scaffold,
  ),
  ListTileOptions(
    menuOption: MenuOption.button,
    route: Routes.button,
    text: Constants.button,
  ),
  ListTileOptions(
    menuOption: MenuOption.textfield,
    text: Constants.textfield,
    route: Routes.textfield,
  ),
  ListTileOptions(
    menuOption: MenuOption.checkbox,
    text: Constants.checkBox,
    route: Routes.checkbox,
  ),
  ListTileOptions(
    menuOption: MenuOption.dropDownMenu,
    text: Constants.dropdown,
    route: Routes.dropdown,
  ),
  ListTileOptions(
    menuOption: MenuOption.circularProgress,
    text: Constants.circularProgress,
    route: Routes.circularProgress,
  ),
  ListTileOptions(
    menuOption: MenuOption.radioButton,
    text: Constants.radio,
    route: Routes.radioButton,
  ),
  ListTileOptions(
    menuOption: MenuOption.card,
    text: Constants.card,
    route: Routes.card,
  ),
  ListTileOptions(
    menuOption: MenuOption.table,
    text: Constants.table,
    route: Routes.table,
  ),
  ListTileOptions(
    menuOption: MenuOption.orientationalColumnRow,
    text: Constants.columnroworientational,
    route: Routes.orientationRowColumn,
  ),
  ListTileOptions(
    menuOption: MenuOption.toast,
    text: Constants.toast,
    route: Routes.toast,
  ),
  ListTileOptions(
    menuOption: MenuOption.text,
    text: Constants.text,
    route: Routes.text,
  ),
  ListTileOptions(
    menuOption: MenuOption.appbar,
    text: Constants.appbar,
    route: Routes.appBar,
  ),
  ListTileOptions(
    menuOption: MenuOption.listtile,
    text: Constants.listTile,
    route: Routes.listile,
  ),
  ListTileOptions(
    menuOption: MenuOption.expansionTile,
    text: Constants.expansiontile,
    route: Routes.expansionTile,
  ),
  ListTileOptions(
    menuOption: MenuOption.code,
    text: Constants.code,
    route: Routes.code,
  ),
  ListTileOptions(
    menuOption: MenuOption.icon,
    text: Constants.icon,
    route: Routes.icon,
  )
];

List<ListTileOptions> serviceOptions = [
  ListTileOptions(
    menuOption: MenuOption.navigationService,
    text: Constants.navigation,
    route: Routes.navigationService,
  ),
  ListTileOptions(
    menuOption: MenuOption.layoutService,
    text: Constants.layout,
    route: Routes.layoutService,
  ),
  ListTileOptions(
    menuOption: MenuOption.dialogService,
    text: Constants.dialog,
    route: Routes.dialogService,
  ),
  ListTileOptions(
    menuOption: MenuOption.searchService,
    text: Constants.search,
    route: Routes.searchService,
  ),
  ListTileOptions(
    menuOption: MenuOption.urlService,
    text: Constants.url,
    route: Routes.urlService,
  ),
];

List<ListTileOptions> dialogOptions = [
  ListTileOptions(
    menuOption: MenuOption.aboutDialog,
    text: Constants.about,
    route: Routes.aboutDialog,
  ),
  ListTileOptions(
    menuOption: MenuOption.infoDialog,
    text: Constants.information,
    route: Routes.infoDialog,
  ),
  ListTileOptions(
    menuOption: MenuOption.actionDialog,
    text: Constants.action,
    route: Routes.actionDialog,
  ),
  ListTileOptions(
    menuOption: MenuOption.loadingDialog,
    text: Constants.loading,
    route: Routes.loadingDialog,
  ),
  ListTileOptions(
    menuOption: MenuOption.customDialog,
    text: Constants.custom,
    route: Routes.customDialog,
  ),
];

List<ListTileOptions> helperOptions = [
  ListTileOptions(
    menuOption: MenuOption.copyToClipboardHelper,
    text: Constants.copyToClipboard,
    route: Routes.copyToClipboardHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.consoleHelper,
    text: Constants.console,
    route: Routes.consoleHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.securityHelper,
    text: Constants.security,
    route: Routes.securityHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.dateTimeHelper,
    text: Constants.dateTime,
    route: Routes.dateTimeHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.layoutHelper,
    text: Constants.layout,
    route: Routes.layoutHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.toastHelper,
    text: Constants.toast,
    route: Routes.toastHelper,
  ),
  // ListTileOptions(
  //   menuOption: MenuOption.upScaffoldHelper,
  //   text: Constants.scaffold,
  //   route: Routes.scaffoldHelper,
  // ),
  ListTileOptions(
    menuOption: MenuOption.upRichTextEditorHelper,
    text: Constants.upRichTextEditor,
    route: Routes.richTextEditorHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.imageHelper,
    text: Constants.image,
    route: Routes.imageHelper,
  ),
  ListTileOptions(
    menuOption: MenuOption.routesHelper,
    text: Constants.routes,
    route: Routes.routesHelper,
  )
];
