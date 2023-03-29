import 'package:flutter/material.dart';
import 'package:ssk_manager/src/widgets/left_side_menu.dart';

class ArmCreatingPage extends StatefulWidget {
  const ArmCreatingPage({Key? key}) : super(key: key);

  @override
  State<ArmCreatingPage> createState() => _ArmCreatingPageState();
}

class _ArmCreatingPageState extends State<ArmCreatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          LeftSideMenu(),
          DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.black87,
                    indicatorColor: Colors.amber,
                    tabs: [
                      Tab(
                        text: 'Создание',
                      ),
                      Tab(
                        text: 'Журнал АРМ',
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
