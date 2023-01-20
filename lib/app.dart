import 'package:flutter/material.dart';

import 'package:flutter_up/models/up_route.dart';
import 'package:flutter_up/models/up_router_state.dart';
import 'package:flutter_up/themes/up_themes.dart';
import 'package:flutter_up/up_app.dart';
import 'package:flutter_up_docs/pages/docs/docs.dart';

import 'package:flutter_up_docs/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UpApp(
      //Define theme
      theme: UpThemes.generateThemeByColor(
        primaryColor: Colors.blue,
        secondaryColor: Colors.blueGrey,
        tertiaryColor: Colors.amber,
        linkColor: Colors.black,
        successColor: Colors.green,
        warnColor: Colors.red,
      ),
      title: 'FlutterUp docs',
      initialRoute: HomePage.routeName,

      //initailize upRoutes
      upRoutes: [
        UpRoute(
          path: HomePage.routeName,
          name: HomePage.routeName,
          pageBuilder: (BuildContext context, UpRouterState state) {
            //If you want to use query params pass it to your page
            return const HomePage();
          },
          // Define redirect Function and redirect route
          // shouldRedirect: () {},
          // redirectRoute: '/'
        ),
        UpRoute(
          path: DocsPage.routeName,
          name: DocsPage.routeName,
          pageBuilder: (BuildContext context, UpRouterState state) {
            //If you want to use query params pass it to your page
            return DocsPage(
              queryParms: state.queryParams,
            );
          },
          // Define redirect Function and redirect route
          // shouldRedirect: () {},
          // redirectRoute: '/'
        ),
      ],
    );
  }
}
