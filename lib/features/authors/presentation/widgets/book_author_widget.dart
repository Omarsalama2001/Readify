import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/search_bar_widget.dart';
import 'package:fruit_e_commerce/features/authors/presentation/widgets/book_author_item_widget.dart';

class BookAuthorWidget extends StatelessWidget {
  const BookAuthorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.getHight(divide: 0.032), left: context.getWidth(divide: 0.037), right: context.getWidth(divide: 0.037)),
      child: Column(children: [
         SearchBarWidget(
          onChanged: (query) {
            
          },
         ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(context.getDefaultSize()),
          child: GridView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const BookAuthorItemWidget(),
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.all(context.getHight(divide: 0.0)),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: context.getWidth(divide: 0.05),
              mainAxisExtent: context.getHight(divide: 0.24),
            ),
          ),
        )),
      ]),
    );
  }
}
