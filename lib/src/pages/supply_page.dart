import 'package:flutter/material.dart';
import 'package:ssk_manager/src/models/supply.dart';
import '../widgets/custom_table2.dart';
import '../widgets/left_side_menu.dart';

class SupplyPage extends StatefulWidget {
  const SupplyPage({super.key});

  @override
  State<SupplyPage> createState() => _SupplyPageState();
}

class _SupplyPageState extends State<SupplyPage> {
  List<DataRow> getDataRow(
      List<Supply> dataSource, Map<String, String> sortRule) {
    if (dataSource.isEmpty) {
      getDataFromDb();
      return generateDataRow(sort(dataSource, sortRule));
    } else {
      return generateDataRow(sort(dataSource, sortRule));
    }
  }

  Future getDataFromDb() async {
    if (_computerList.isEmpty) {
      _computerList = await InventoryListDatabase.getComputerDataFromDatabase();
      return _computerList;
    } else {
      return _computerList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSK Resource / IncomePage'),
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(null),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              LeftSideMenu(),
              Expanded(child: Placeholder()),
              Expanded(
                flex: 5,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FutureBuilder(
                        future: null,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return CustomTable2(
                                dataRowList: getDataRow(_computerList, sortBy));
                          } else {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue.shade700,
                              ),
                            );
                          }
                        },
                      )
                    ]),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Text('Фильтры'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Text('Инвентарный номер'),
                              TextField(
                                // controller: invNumberTextController,
                                onChanged: (value) {
                                  setState(() {
                                    // sortBy['Inv number'] = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Модель'),
                              DropdownButton(
                                isExpanded: true,
                                focusColor: Colors.grey.shade200,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                items: [],
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Модель'),
                              DropdownButton(
                                isExpanded: true,
                                focusColor: Colors.grey.shade200,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                items: [],
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Модель'),
                              DropdownButton(
                                isExpanded: true,
                                focusColor: Colors.grey.shade200,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                items: [],
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Модель'),
                              DropdownButton(
                                isExpanded: true,
                                focusColor: Colors.grey.shade200,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                items: [],
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
