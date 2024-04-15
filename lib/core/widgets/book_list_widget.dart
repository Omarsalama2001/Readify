import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/book_item_widget.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(context.getHight(divide: 0.02)),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: context.getHight(divide: 0.03), crossAxisSpacing: context.getWidth(divide: 0.05), mainAxisExtent: context.getHight(divide: 0.28)),
      itemBuilder: (context, index) => const BookItemWidget(),
      itemCount: 10,
    );
  }
}
