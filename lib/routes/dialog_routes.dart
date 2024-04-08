import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

List<UpRoute> dialogRoutes = [
  UpRoute(
    path: Routes.infoDialog,
    name: Routes.infoDialog,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.aboutDialog,
    name: Routes.aboutDialog,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.customDialog,
    name: Routes.customDialog,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.actionDialog,
    name: Routes.actionDialog,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.loadingDialog,
    name: Routes.loadingDialog,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
];
