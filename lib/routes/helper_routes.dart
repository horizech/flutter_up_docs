import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

List<UpRoute> helperRoutes = [
  UpRoute(
    path: Routes.copyToClipboardHelper,
    name: Routes.copyToClipboardHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.securityHelper,
    name: Routes.securityHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.layoutHelper,
    name: Routes.layoutHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.dateTimeHelper,
    name: Routes.dateTimeHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.consoleHelper,
    name: Routes.consoleHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.toastHelper,
    name: Routes.toastHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.scaffoldHelper,
    name: Routes.scaffoldHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.routesHelper,
    name: Routes.routesHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.imageHelper,
    name: Routes.imageHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.richTextEditorHelper,
    name: Routes.richTextEditorHelper,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
];
