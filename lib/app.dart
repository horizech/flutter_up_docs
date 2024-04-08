import 'package:flutter/material.dart';

import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/up_app.dart';
import 'package:flutter_up_docs/constants.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

import 'package:flutter_up_docs/pages/home/home.dart';
import 'package:flutter_up_docs/pages/test.dart';
import 'package:flutter_up_docs/routes/dialog_routes.dart';
import 'package:flutter_up_docs/routes/helper_routes.dart';
import 'package:flutter_up_docs/routes/service_routes.dart';
import 'package:flutter_up_docs/routes/widget_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UpApp(
      //Define theme
      theme: UpThemes.generateThemeByColor(
        baseColor: const Color.fromARGB(255, 25, 23, 30),
        isDark: true,
        primaryColor: Colors.pink,
        secondaryColor: Colors.blueGrey,
        tertiaryColor: Colors.amber,
        linkColor: Colors.black,
        successColor: Colors.green,
        warnColor: Colors.red,
      ),
      title: 'FlutterUp docs',
      initialRoute: Routes.home,

      //initailize upRoutes
      upRoutes: [
        UpRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (BuildContext context, UpRouterState state) {
            //If you want to use query params pass it to your page
            return const HomePage();
          },
          // Define redirect Function and redirect route
          // shouldRedirect: () {},
          // redirectRoute: '/'
        ),
        UpRoute(
          path: Routes.test,
          name: Routes.test,
          pageBuilder: (BuildContext context, UpRouterState state) {
            return TestPage(
              queryParams: state.queryParams,
              extra: state.extra,
            );
          },
        ),
        UpRoute(
          path: Routes.theme,
          name: Routes.theme,
          pageBuilder: (BuildContext context, UpRouterState state) {
            return DocsPage(
              key: GlobalKey(),
            );
          },
        ),
        UpRoute(
          path: DocsPage.routeName,
          name: DocsPage.routeName,
          pageBuilder: (BuildContext context, UpRouterState state) {
            //If you want to use query params pass it to your page
            return DocsPage(
              key: GlobalKey(),
              // queryParms: state.queryParams,
            );
          },
          // Define redirect Function and redirect route
          // shouldRedirect: () {},
          // redirectRoute: '/'
        ),
        ...widgetRoutes,
        ...serviceRoutes,
        ...dialogRoutes,
        ...helperRoutes
      ],
    );
  }
}
