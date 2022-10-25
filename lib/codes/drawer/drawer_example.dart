import 'package:flutter/material.dart';
import 'package:flutter_up/models/up_drawer_item.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);

  List<UpDrawerItem> _getDrawerActions() {
    List<UpDrawerItem> actions = <UpDrawerItem>[];
    {
      actions = [
        ...actions,
        UpDrawerItem(title: "Login", icon: Icons.person, onTap: () {}),
      ];
    }

    actions = [
      ...actions,
      UpDrawerItem(title: "About", icon: Icons.info, onTap: () {}),
    ];

    return actions;
  }

  Widget _getDrawerHeader() {
    return DrawerHeader(
      padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "Drawer Example",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )
        ],
      ),
    );
  }

  List<Widget> _getView(context) {
    List<Widget> view = [_getDrawerHeader()];

    view = [
      ...view,
      ..._getDrawerActions()
          .map<Widget>(
            (action) => ListTile(
              leading: Icon(action.icon),
              title: Text(action.title),
              onTap: () => {
                action.onTap(context),
              },
            ),
          )
          .toList()
    ];

    return view;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: _getView(context),
      ),
    );
  }
}
