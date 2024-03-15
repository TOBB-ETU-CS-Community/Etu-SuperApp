import 'package:flutter/material.dart';
import 'package:etu_super_app_1/Widgets/schedule_item.dart';
import 'package:etu_super_app_1/color_constants.dart';

class GeneralListTableWidget extends StatefulWidget {
  const GeneralListTableWidget(
      {Key? key, required this.studentId, required this.infoMap})
      : super(key: key);
  final int studentId;
  final Map infoMap;
  static const List<String> columnTitleList = [
    '',
    'Pazartesi',
    'Salı',
    'Çarşamba',
    'Perşembe',
    'Cuma',
    'Cumartesi',
    'Pazar',
  ];
  static const List<String> rowTitleList = [
    '8.30 - 9.20',
    '9.30 - 10.20',
    '10.30 - 11.20',
    '11.30 - 12.20',
    '12.30 - 13.20',
    '13.30 - 14.20',
    '14.30 - 15.20',
    '15.30 - 16.20',
    '16.30 - 17.20',
    '17.30 - 18.20',
    '18.30 - 19.20',
    '19.30 - 20.20',
  ];

  @override
  State<GeneralListTableWidget> createState() => _GeneralListTableWidgetState();
}

class _GeneralListTableWidgetState extends State<GeneralListTableWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Table(
          defaultColumnWidth: const MaxColumnWidth(
              FixedColumnWidth(70), IntrinsicColumnWidth()),
          border: TableBorder.symmetric(
              inside: BorderSide(color: ColorConstants.yellowish, width: 1)),
          children: buildTable(context),
        ),
      ),
    );
  }

  List<TableRow> buildTable(BuildContext context) {
    List<TableRow> tableRowList = [
      TableRow(
        decoration: BoxDecoration(color: ColorConstants.whiteBG),
        children: List.generate(
          GeneralListTableWidget.columnTitleList.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                GeneralListTableWidget.columnTitleList[index],
                style: TextStyle(
                  color: ColorConstants.mainBlackBlue,
                  fontFamily: 'Mohave',
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    ];
    for (int i = 0; i < GeneralListTableWidget.rowTitleList.length; i++) {
      List<Widget> tableRowChildrenList = [];
      tableRowChildrenList.add(
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                GeneralListTableWidget.rowTitleList[i],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstants.mainBlackBlue,
                  fontFamily: 'Mohave',
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      );
      for (int j = 0;
          j < GeneralListTableWidget.columnTitleList.length - 1;
          j++) {
        tableRowChildrenList.add(
          const Expanded(
              child: ScheduleItem(
            lessonId: "Bil132.1",
            place: "Amfi 3",
            zoomLink: null,
          )),
        );
      }
      tableRowList.add(
        TableRow(
          children: tableRowChildrenList,
          decoration: BoxDecoration(
              color: i.isOdd
                  ? ColorConstants
                      .nearWhiteBG //const Color.fromARGB(184, 147, 216, 249)
                  : ColorConstants.whiteBG),
        ),
      );
    }

    return tableRowList;
  }
}
