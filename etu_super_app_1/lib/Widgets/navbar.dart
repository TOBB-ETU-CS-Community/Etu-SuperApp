import 'package:flutter/material.dart';

import '../color_constants.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstants.greyWhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: const Text('Giriş'),
            onTap: () {
              Navigator.pushNamed(context, "Log");
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Ders Programı'),
            onTap: () {
              Navigator.pushNamed(context, "SchedulePage");
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.price_change),
          //   title: const Text('Fiyat Gir'),
          //   onTap: () {
          //     Navigator.of(context).pop();
          //     appState.changePageThroughNavBar('EnterPricePage');
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(Icons.corporate_fare),
          //   title: const Text('Firmalar'),
          //   onTap: () {
          //     Navigator.of(context).pop();
          //     appState.changePageThroughNavBar('CorporationsPage');
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Çıkış yap'),
            onTap: () {
              Navigator.of(context).pop();
            }, //Navigator.pushNamed(context, 'SignInPage')},
          ),
        ],
      ),
    );
  }
}
