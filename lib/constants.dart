import 'package:flutter_up/models/up_label_value.dart';

List<UpLabelValuePair> fruitItems = [
  UpLabelValuePair(
    label: 'Apple',
    value: 'Apple',
  ),
  UpLabelValuePair(
    label: 'Orange',
    value: 'Orange',
  ),
  UpLabelValuePair(
    label: 'Grapes',
    value: 'Grapes',
  ),
];

class Routes {
  static const String home = '/home';
  static const String test = '/test';

  static const String theme = '/theme';

  static const String button = '/widgets/button';
  static const String textfield = '/widgets/textfield';
  static const String checkbox = '/widgets/checkbox';
  static const String dropdown = '/widgets/dropDownMenu';
  static const String circularProgress = '/widgets/circularProgress';
  static const String radioButton = '/widgets/radioButton';
  static const String card = '/widgets/card';
  static const String table = '/widgets/table';
  static const String orientationRowColumn = '/widgets/orientationalColumnRow';
  static const String toast = '/widgets/toast';
  static const String listile = '/widgets/listtile';

  static const String appBar = '/widgets/appbar';
  static const String expansionTile = '/widgets/expansionTile';
  static const String text = '/widgets/text';
  static const String icon = '/widgets/icon';
  static const String code = '/widgets/code';
  static const String scaffold = '/widgets/scaffold';

  static const String navigationService = '/services/navigation';
  static const String dialogService = '/services/dialog';
  static const String layoutService = '/services/layout';
  static const String urlService = '/services/url';
  static const String searchService = '/services/search';
  static const String customDialog = '/dialogs/customDialog';
  static const String infoDialog = '/dialogs/infoDialog';
  static const String actionDialog = '/dialogs/actionDialog';
  static const String aboutDialog = '/dialogs/aboutDialog';
  static const String loadingDialog = '/dialogs/loadingDialog';

  static const String copyToClipboardHelper = '/helpers/copyToClipboard';
  static const String consoleHelper = '/helpers/console';
  static const String toastHelper = '/helpers/toast';
  static const String dateTimeHelper = '/helpers/dateTime';
  static const String securityHelper = '/helpers/security';
  static const String layoutHelper = '/helpers/layout';
  static const String imageHelper = '/helpers/image';
  static const String routesHelper = '/helpers/routes';
  static const String richTextEditorHelper = '/helpers/upRichTextEditor';
  static const String scaffoldHelper = '/helpers/upScaffold';
}

class Constants {
  static const String version = 'v1.0.0';
  static const String title = 'Flutter Up Docs';
  static const String widgets = 'Widgets';
  static const String button = 'Button';
  static const String textfield = 'Textfield';
  static const String checkBox = 'CheckBox';
  static const String radio = 'Radio Buttons';
  static const String table = 'Table';
  static const String columnroworientational = 'Orientational column row';
  static const String toast = 'Toast';
  static const String appbar = 'Appbar';
  static const String listTile = 'List Tile';
  static const String expansiontile = 'Expansion Tile';

  static const String dropdown = 'Dropdown Menu';
  static const String circularProgress = 'Circular Progress';
  static const String card = 'Card';
  static const String code = 'Code';
  static const String scaffold = 'Scaffold';

  static const String icon = 'Icon';
  static const String text = 'Text';
  static const String navigation = 'Navigation';
  static const String dialog = 'Dialog';
  static const String search = 'Search';
  static const String url = 'Url';

  static const String about = 'About';
  static const String information = 'Information';
  static const String action = 'Action';
  static const String custom = 'Custom';

  static const String copyToClipboard = "Copy to clipboard";
  static const String console = "Console";
  static const String dateTime = "Date Time";
  static const String security = "Security";
  static const String layout = "Layout";

  static const String image = "Image";
  static const String upRichTextEditor = "Up RichTextEditor";
  static const String routes = "Routes";
  static const String loading = "Loading";
}
