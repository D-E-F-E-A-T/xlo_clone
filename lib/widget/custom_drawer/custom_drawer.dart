import 'package:flutter/material.dart';
import 'components/custom_header.dart';
import 'components/icon_section.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomHeader(),
          IconSection(),
          Divider(color: Colors.grey[500],),
        ],
      ),
    );
  }
}
