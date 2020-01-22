import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/screens/base_screen/base_screen.dart';
import 'controllers/drawer_controller/drawer_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DrawerCustom>(
          create: (_) => DrawerCustom(),
        )
      ],
      child: MaterialApp(
        title: 'XLO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BaseScreen(),
      ),
    );
  }
}
