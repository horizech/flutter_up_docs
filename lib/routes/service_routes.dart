import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

List<UpRoute> serviceRoutes = [
  UpRoute(
    path: Routes.navigationService,
    name: Routes.navigationService,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.layoutService,
    name: Routes.layoutService,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.urlService,
    name: Routes.urlService,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.searchService,
    name: Routes.searchService,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
  UpRoute(
    path: Routes.dialogService,
    name: Routes.dialogService,
    pageBuilder: (BuildContext context, UpRouterState state) {
      return DocsPage(
        key: GlobalKey(),
      );
    },
  ),
];
