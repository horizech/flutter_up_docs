import 'package:flutter/material.dart';
import 'package:flutter_up/helpers/up_routes_helper.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up_docs/enum/menu_option.dart';
import 'package:flutter_up_docs/widgets/left_side_nav.dart';
import 'package:flutter_up_docs/views/views.dart';

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

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  checkCurrentSelection() {
    String path = UpRoutesHelper.getCurrentNamedPath(context);
    if (path.contains("/") && path.contains("docs")) {
      currentSelection = MenuOption.start;
    }
    if (path.contains("theme")) {
      setState(() {
        currentSelection = MenuOption.theme;
      });
    }
    if (path.contains("/") && path.contains("widgets")) {
      currentMenu = "widgets";
      List<String> splitString = path.split("/");
      if (splitString.length > 2) {
        String checkValue = splitString[2];
        if (MenuOption.values
            .any((e) => e.toString() == "MenuOption.$checkValue")) {
          setState(() {
            currentSelection = MenuOption.values
                .firstWhere((e) => e.toString() == "MenuOption.$checkValue");
          });
          debugPrint(path.toString());
        }
      }
    }
    if (path.contains("/") && path.contains("dialogs")) {
      currentMenu = "dialogs";
      List<String> splitString = path.split("/");
      if (splitString.length > 2) {
        String checkValue = splitString[2];
        if (MenuOption.values
            .any((e) => e.toString() == "MenuOption.$checkValue")) {
          setState(() {
            currentSelection = MenuOption.values
                .firstWhere((e) => e.toString() == "MenuOption.$checkValue");
          });
          debugPrint(path.toString());
        }
      }
    }
    if (path.contains("/") && path.contains("services")) {
      currentMenu = "services";
      List<String> splitString = path.split("/");
      if (splitString.length > 2) {
        String checkValue = splitString[2];
        if (MenuOption.values
            .any((e) => e.toString() == "MenuOption.${checkValue}Service")) {
          setState(() {
            currentSelection = MenuOption.values.firstWhere(
                (e) => e.toString() == "MenuOption.${checkValue}Service");
          });
          debugPrint(path.toString());
        }
      }
    }
    if (path.contains("/") && path.contains("helpers")) {
      currentMenu = "helpers";
      List<String> splitString = path.split("/");
      if (splitString.length > 2) {
        String checkValue = splitString[2];
        if (MenuOption.values
            .any((e) => e.toString() == "MenuOption.${checkValue}Helper")) {
          setState(() {
            currentSelection = MenuOption.values.firstWhere(
                (e) => e.toString() == "MenuOption.${checkValue}Helper");
          });
          debugPrint(path.toString());
        }
      }
    }
  }

  MenuOption? currentSelection;
  String currentMenu = "";
  selectView(currentSelection) {
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
      case MenuOption.radioButton:
        return const RadioView();
      case MenuOption.card:
        return const UpCardView();
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
        return const UpAppbarView();
      case MenuOption.expansionTile:
        return const UpExpansionTileView();
      case MenuOption.text:
        return const UpTextView();
      case MenuOption.icon:
        return const UpIconView();
      case MenuOption.code:
        return const UpCodeView();
      case MenuOption.listtile:
        return const UpListTileView();
      case MenuOption.scaffold:
        return const UpScaffoldView();
      case MenuOption.table:
        return const TableView();

      //helpers view
      case MenuOption.copyToClipboardHelper:
        return const CopyToClipboardHelperView();
      case MenuOption.consoleHelper:
        return const ConsoleHelperView();
      case MenuOption.toastHelper:
        return const ToastHelperView();
      case MenuOption.dateTimeHelper:
        return const DateTimeHelperView();
      case MenuOption.securityHelper:
        return const SecurityHelperView();
      case MenuOption.layoutHelper:
        return const LayoutHelperView();
      case MenuOption.upScaffoldHelper:
        return const ScaffoldHelperView();
      case MenuOption.routesHelper:
        return const RoutesHelperView();
      case MenuOption.imageHelper:
        return const ImageHelperView();

      //Dialog views
      case MenuOption.customDialog:
        return const CustomDialogView();
      case MenuOption.actionDialog:
        return const ActionDialogView();
      case MenuOption.aboutDialog:
        return const AboutDialogView();
      case MenuOption.infoDialog:
        return const InfoDialogView();
      case MenuOption.loadingDialog:
        return const LoadingDialogView();

      //service view
      case MenuOption.navigationService:
        return const NavigationServiceView();
      case MenuOption.layoutService:
        return const LayoutServiceView();
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

  @override
  Widget build(BuildContext context) {
    if (currentSelection == null) {
      checkCurrentSelection();
    }
    return SelectionArea(
      child: UpScaffold(
        scaffoldKey: _scaffoldKey,
        appBar: UpAppBar(
          title: "FlutterUp Documentation",
          showToggleButton: true,
          scaffoldKey: _scaffoldKey,
        ),
        // style: UpStyle(
        //   bod
        //   appBackgroundColor: UpConfig.of(context).theme.baseColor.shade900,
        // ),
        fixedDrawer: true,
        drawer: LeftDrawer(
          currentMenu: currentMenu,
          currentSelection: currentSelection!,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: selectView(currentSelection),
        ),
      ),
    );
  }
}
