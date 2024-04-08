import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

List<UpRoute> widgetRoutes = [
  UpRoute(
    path: Routes.button,
    name: Routes.button,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.textfield,
    name: Routes.textfield,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.toast,
    name: Routes.toast,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.appBar,
    name: Routes.appBar,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.listile,
    name: Routes.listile,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.text,
    name: Routes.text,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.scaffold,
    name: Routes.scaffold,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.card,
    name: Routes.card,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.checkbox,
    name: Routes.checkbox,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.radioButton,
    name: Routes.radioButton,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.circularProgress,
    name: Routes.circularProgress,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.expansionTile,
    name: Routes.expansionTile,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.dropdown,
    name: Routes.dropdown,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.orientationRowColumn,
    name: Routes.orientationRowColumn,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.code,
    name: Routes.code,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.icon,
    name: Routes.icon,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.table,
    name: Routes.table,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return const DocsPage();
    },
  ),
];
