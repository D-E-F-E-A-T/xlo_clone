import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/controllers/drawer_controller/drawer_controller.dart';
import 'package:xlo/screens/home_screen/home_screen.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    final drawerCustom = Provider.of<DrawerCustom>(context);
    return Scaffold(
      body: PageView(
        controller: drawerCustom.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.green,),
          Container(color: Colors.yellow,),
          Container(color: Colors.blue,),
          Container(color: Colors.brown,),
        ],
      ),
    );
  }
}
