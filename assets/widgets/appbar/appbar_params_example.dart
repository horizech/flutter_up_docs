import 'package:flutter/material.dart';
import 'package:flutter_up/config/up_config.dart';
import 'package:flutter_up/widgets/up_app_bar.dart';
import 'package:flutter_up/widgets/up_icon.dart';
import 'package:flutter_up/widgets/up_scaffold.dart';
import 'package:flutter_up/widgets/up_text.dart';
import 'package:flutter_up/models/up_app_bar_item.dart';

class UpAppBarParamsExample extends StatefulWidget {
  const UpAppBarParamsExample({Key? key}) : super(key: key);

  @override
  State<UpAppBarParamsExample> createState() => _UpAppBarParamsExampleState();
}

class _UpAppBarParamsExampleState extends State<UpAppBarParamsExample> {
  UpAppBarItem _selectedItem = UpAppBarItem();

  List<UpAppBarItem> _getUpAppBarItems() {
    return <UpAppBarItem>[
      UpAppBarItem(title: "UserName", icon: Icons.person),
      UpAppBarItem(title: "Logout", icon: Icons.power_settings_new),
    ];
  }

  void _select(UpAppBarItem item) {
    // Causes the app to rebuild with the const _selectedItem.
    setState(() {
      _selectedItem = item;
      if (_selectedItem.title == "logout") {
        _logOut();
      }
    });
  }

  void _logOut() async {
    // action
  }

  @override
  void initState() {
    super.initState();
    _selectedItem = _getUpAppBarItems()[0];
  }

  @override
  void dispose() {
    _selectedItem = UpAppBarItem();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: SizedBox(
            height: 50,
            child: UpScaffold(
              appBar: UpAppBar(
                title: 'AppBar Example',
                actions: [
                  PopupMenuButton<UpAppBarItem>(
                    icon: const UpIcon(icon: Icons.more_vert),
                    surfaceTintColor: Colors.transparent,
                    color: UpConfig.of(context).theme.baseColor.shade50,
                    onSelected: _select,
                    itemBuilder: (BuildContext context) {
                      return _getUpAppBarItems().map((UpAppBarItem item) {
                        return PopupMenuItem<UpAppBarItem>(
                          value: item,
                          child: Row(
                            children: [
                              UpIcon(
                                icon: item.icon!,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: UpText(item.title ?? ""),
                              )
                            ],
                          ),
                        );
                      }).toList();
                    },
                  ),
                  const SizedBox(child: UpIcon(icon: Icons.verified_user)),
                ],
                leading: const UpIcon(icon: Icons.menu_book),
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: SizedBox(
              height: 50,
              child: UpScaffold(
                appBar: UpAppBar(
                  title: 'AppBar title',
                  titleWidget: UpText("AppBar title widget"),
                ),
              ),
            )),
      ],
    );
  }
}
