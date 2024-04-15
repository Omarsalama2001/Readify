import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/search_bar_widget.dart';
import 'package:fruit_e_commerce/features/category/presentation/widgets/category_item_widget.dart';

class CategoryPageWidget extends StatelessWidget {
  const CategoryPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.getHight(divide: 0.032), left: context.getWidth(divide: 0.037), right: context.getWidth(divide: 0.037)),
      child: Column(
        children: [
          const SearchBarWidget(),
          SizedBox(
            height: context.getHight(divide: 0.02),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: context.getHight(divide: 0.035), crossAxisSpacing: context.getWidth(divide: 0.05), mainAxisExtent: context.getHight(divide: 0.18)),
            itemCount: 10,
            itemBuilder: (context, index) => const CategoryItemWidget(),
          ))
        ],
      ),
    );
  }
}
