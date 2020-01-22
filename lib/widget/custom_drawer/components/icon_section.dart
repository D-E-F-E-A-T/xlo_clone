import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/drawer_controller/drawer_controller.dart';
import 'package:xlo/widget/custom_drawer/components/icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final drawerController = Provider.of<DrawerCustom>(context);

    void _setPage(int page){
      Navigator.of(context).pop();
      drawerController.setPage(page);
      drawerController.setPageController(page);
    }

    return Observer(
        builder: (_){
          return Column(
            children: <Widget>[
              IconTile(
                label: "Anúncios",
                iconData: Icons.list,
                onTap: () {
                  _setPage(0);
                },
                highlighted: drawerController.page == 0,
              ),
              IconTile(
                label: "Inserir Anúncio",
                iconData: Icons.edit,
                onTap: () {
                  _setPage(1);
                },
                highlighted: drawerController.page == 1,
              ),
              IconTile(
                label: "Chat",
                iconData: Icons.chat,
                onTap: () {
                  _setPage(2);
                },
                highlighted: drawerController.page == 2,
              ),
              IconTile(
                label: "Favoritos",
                iconData: Icons.favorite,
                onTap: () {
                  _setPage(3);
                },
                highlighted: drawerController.page == 3,
              ),
              IconTile(
                label: "Minha conta",
                iconData: Icons.person,
                onTap: () {
                  _setPage(4);
                },
                highlighted: drawerController.page == 4,
              ),
            ],
          );
        }
    );
  }
}
