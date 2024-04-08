// import 'package:flutter/material.dart';
// import 'package:flutter_up/locator.dart';
// import 'package:flutter_up/models/up_drawer_item.dart';
// import 'package:flutter_up/services/up_navigation.dart';
// import 'package:flutter_up/themes/up_style.dart';
// import 'package:flutter_up/widgets/up_expansion_tile.dart';
// import 'package:flutter_up/widgets/up_list_tile.dart';
// import 'package:flutter_up/widgets/up_nav_drawer.dart';
// import 'package:flutter_up/widgets/up_text.dart';
// import 'package:flutter_up_docs/constants.dart';

// class NavDrawer extends StatefulWidget {
//   const NavDrawer({Key? key}) : super(key: key);

//   @override
//   State<NavDrawer> createState() => _NavDrawerState();
// }

// class _NavDrawerState extends State<NavDrawer> {
//   Uri uri = Uri.base;
//   @override
//   void initState() {
//     super.initState();
//   }

//   List<UpExpansionTile> _getDrawerItems() {
//     return [_getWidgetDrawerActions()];
//   }

//   Widget getDrawerHeader(context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: UpText(
//               style: UpStyle(textWeight: FontWeight.w900),
//               Constants.title,
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//   }

//   List<Widget> getView(context) {
//     return [
//       getDrawerHeader(context),
//       ..._getDrawerItems(),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return UpNavDrawer(
//       version: Constants.version,
//       children: getView(context),
//     );
//   }

//   UpExpansionTile _getWidgetDrawerActions() {
//     List<UpDrawerItem> actions = <UpDrawerItem>[];

//     void button(context) {
//       ServiceManager<UpNavigationService>().navigateToNamed(Routes.button);
//     }

//     actions = [
//       ...actions,
//       UpDrawerItem(title: Constants.button, onTap: button, path: Routes.button),
//     ];

//     return UpExpansionTile(
//       childrenPadding: const EdgeInsets.all(8.0),
//       title: Constants.widgets,
//       children: [
//         ...actions
//             .map(
//               (e) => UpListTile(
//                 isSelected: uri.fragment == e.path,
//                 leadingIcon: e.icon,
//                 title: e.title,
//                 onTap: () => e.onTap(context),
//               ),
//             )
//             .toList()
//       ],
//     );
//   }
// }
