import 'package:flutter/material.dart';
import 'package:etu_super_app_1/Widgets/general_list_table.dart';
import 'package:etu_super_app_1/Widgets/navbar.dart';
import 'package:etu_super_app_1/Widgets/top_bar.dart';
import 'package:etu_super_app_1/color_constants.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.yellowish,
        title: const TopBar(),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Programım'),
            Tab(text: 'Başka Program'),
          ],
        ),
      ),
      drawer: const NavDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: const [
          GeneralListTableWidget(
            studentId: 100000000,
            infoMap: {},
          ),
          GeneralListTableWidget(
            studentId: 100000001,
            infoMap: {},
          ),
        ],
      ),
    );
  }
}
