import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../color_constants.dart';
import '../main.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

List<bool> list = [true, false, false];

class _BottomBarState extends State<BottomBar> {
  List<IconData> iconList = [
    Icons.home,
    Icons.list,
    Icons.list,
  ];
  List<String> iconNameList = [
    'HomePageButton',
    'SchedulePageButton',
    'OtherPageButton',
  ];
  final pageListString = [
    'HomePage',
    'ListPage',
    'OtherPage',
  ];
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();
    // var currentPage = appState.currentPage;
    return Container(
      color: ColorConstants.yellowish,
      child: Row(
        children: buildButtons(),
      ),
    );
  }

  List<Widget> buildButtons() {
    var appState = context.watch<MyAppState>();
    print('currentPageInsideBottomBar: ${appState.currentPage}');
    int cpindex = pageListString.indexOf(appState.currentPage);
    for (int i = 0; i < list.length; i++) {
      if (i == cpindex) {
        list[i] = true;
      } else {
        list[i] = false;
      }
    }
    // print('boolList: $list');
    List<Widget> listButtons = List.generate(list.length, (i) {
      return Expanded(
        flex: 2,
        child: FittedBox(
          fit: BoxFit.contain,
          child: IconButton(
            onPressed: () {
              setState(() {
                for (int index = 0; index < list.length; index++) {
                  list[index] = false;
                }
                list[i] = !list[i];
                appState.changePageThroughBottomBar(iconNameList[i]);
                Navigator.pushNamed(context, 'SchedulePage');
              });
            },
            icon: CircleAvatar(
                foregroundColor: list[i]
                    ? ColorConstants.mainBlackBlue
                    : ColorConstants.yellowish,
                backgroundColor: list[i]
                    ? ColorConstants.mainBlackBlue
                    : ColorConstants.yellowish,
                child: Icon(
                  color: list[i]
                      ? ColorConstants.yellowish
                      : ColorConstants.mainBlackBlue,
                  iconList[i],
                )),
          ),
        ),
      );
    });
    for (int i in [0, 2, 4, 6]) {
      listButtons.insert(i, const SizedBox(width: 20));
    }

    return listButtons;
  }
}
