import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/themes/up_style.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_list_tile.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_nav_drawer.dart';
import 'package:flutter_up/widgets/up_text.dart';

class UpAppBarDrawerExample extends StatefulWidget {
  const UpAppBarDrawerExample({Key? key}) : super(key: key);

  @override
  State<UpAppBarDrawerExample> createState() => _UpAppBarDrawerExampleState();
}

class _UpAppBarDrawerExampleState extends State<UpAppBarDrawerExample> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: SizedBox(
        height: 200,
        child: UpScaffold(
          scaffoldKey: _scaffoldKey,
          drawer: const UpNavDrawer(
            children: [
              UpListTile(
                title: "List Tile 1",
              ),
              UpListTile(
                title: "List Tile 2",
              ),
            ],
          ),
          fixedDrawer: true,
          appBar: UpAppBar(
            title: 'AppBar',
            scaffoldKey: _scaffoldKey,
            showToggleButton: true,
          ),
          compactDrawer: Container(
            width: 40,
            color: UpConfig.of(context).theme.primaryColor,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: UpIcon(
                    icon: Icons.home,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: UpIcon(
                    icon: Icons.info,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: UpIcon(
                    icon: Icons.logout,
                  ),
                ),
              ],
            ),
          ),
          style: UpStyle(scaffoldFixedDrawerWidthPercentage: 10),
          body: const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UpIcon(
                      icon: Icons.home,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: UpText(
                      "This is home page",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
