import 'package:etu_super_app_1/Pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/home_page.dart';
import 'Pages/schedule_page.dart';

void main() {
  MyApp myApp = const MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: SafeArea(
        child: MaterialApp(
          title: 'Etu-Super-App',
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const MyHomePage(),
            'SchedulePage': (context) => const SchedulePage(),
            'Log': (context)=> const MyLoginScreen()
          },
        ),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var currentPage = 'GeneralListPage';

  void changePageThroughBottomBar(String iconName) {
    if (iconName != '${currentPage}Button') {
      currentPage = iconName.substring(0, iconName.indexOf('Button'));
      notifyListeners();
    } else {}
  }
}
