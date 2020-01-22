import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/home_controller/home_controller.dart';
import 'package:xlo/widget/custom_drawer/custom_drawer.dart';
import 'components/search_dialog.dart';
import 'components/top_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final homeController = Provider.of<HomeController>(context);

    _openSearch(String currentSearch) async {
      final String search = await showDialog(
        context: context,
        builder: (context) => SearchDialog(currentSearch: currentSearch),
      );
      if (search != null) {
        homeController.setSearch(search);
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Observer(builder: (_) {
          return homeController.search.isEmpty
              ? Text("XLO")
              : GestureDetector(
                  onTap: () => _openSearch(homeController.search),
                  child: LayoutBuilder(
                    builder: (context, constrains) {
                      return Container(
                        width: constrains.biggest.width,
                        child: Text("${homeController.search}"),
                      );
                    },
                  ));
        }),
        actions: <Widget>[
          Observer(builder: (_) {
            return homeController.search.isEmpty
                ? IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      _openSearch("");
                    })
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      homeController.setSearch("");
                    });
          })
        ],
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          TopBar(),
        ],
      ),
    );
  }
}
