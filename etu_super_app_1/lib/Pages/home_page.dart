import 'package:etu_super_app_1/Widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/bottom_bar.dart';
import '../Widgets/top_bar.dart';
import '../color_constants.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var appState;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appState = context.watch<MyAppState>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.yellowish,
          title: const TopBar(),
          leading: null,
        ),
        drawer: const NavDrawer(),
        bottomNavigationBar: const BottomBar(),
        body: Container(
          color: ColorConstants.yellowish,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 10, child: SizedBox()),
            ],
          ),
        ));
  }
}
