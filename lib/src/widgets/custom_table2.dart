import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CustomTable2 extends StatelessWidget {
  final List<DataRow> dataRowList;

  const CustomTable2({super.key, required this.dataRowList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 100,
        columns: const [
          DataColumn2(label: Text(''), fixedWidth: 30),
          DataColumn2(label: Text('ID'), fixedWidth: 30),
          DataColumn2(
            label: Text('Поставщик'),
          ),
          DataColumn2(
            label: Text('Тип техники'),
          ),
          DataColumn2(
            label: Text('Количество'),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text('Цена за штуку'),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text('Общая стоимость'),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text('Дата поставки'),
            size: ColumnSize.S,
          ),
          DataColumn2(
            label: Text('Место хранения'),
            size: ColumnSize.S,
          )
        ],
        rows: dataRowList,
        dividerThickness: 1,
        dataRowHeight: 60,
      ),
    );
  }
}
