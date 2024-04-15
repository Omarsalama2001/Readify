import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/features/admin/presentation/widgets/add_button_widget.dart';
import 'package:fruit_e_commerce/features/admin/presentation/widgets/table_row.widget.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
         const  AddButtonWidget(),
            Table(
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(4),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('#', style: TextStyle(fontSize: context.getDefaultSize() * 2.5)))),
                      TableCell(child: Center(child: Text('Name', style: TextStyle(fontSize: context.getDefaultSize() * 2.5)))),
                      TableCell(child: Center(child: Text('Actions', style: TextStyle(fontSize: context.getDefaultSize() * 2.5)))),
                    ],
                  ),
                  tableRow(context, 1, "Adventure"),
                  tableRow(context, 2, "Editor’s Pick"),
                  tableRow(context, 3, "Trending"),
                  tableRow(context, 4, "Top"),
                  tableRow(context, 5, "Editor’s Pick"),
                  tableRow(context, 6, "Trending"),
                  tableRow(context, 7, "Top"),
                  tableRow(context, 8, "Editor’s Pick"),
                  tableRow(context, 9, "Trending"),
                  tableRow(context, 10, "Top"),
                  tableRow(context, 11, "Editor’s Pick"),
                  tableRow(context, 12, "Trending"),
                  tableRow(context, 13, "Top"),
                  tableRow(context, 14, "Editor’s Pick"),
                  tableRow(context, 15, "Trending"),
                  tableRow(context, 16, "Top"),
                  tableRow(context, 17, "Editor’s Pick"),
                
                  
                ]),
          ],
        ),
  );
  }
}