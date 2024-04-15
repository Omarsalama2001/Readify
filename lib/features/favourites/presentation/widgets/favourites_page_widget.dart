import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/search_bar_widget.dart';
import 'package:fruit_e_commerce/features/favourites/presentation/widgets/favourites_item_widget.dart';

class FavouritesPageWidget extends StatelessWidget {
  const FavouritesPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.getHight(divide: 0.032), left: context.getWidth(divide: 0.037), right: context.getWidth(divide: 0.037)),
      child: Column(
        children: [
          const SearchBarWidget(),

          Expanded(child: ListView.separated(itemBuilder: (context, index) => const FavouritesItemWidget(), itemCount: 10, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: context.getHight(divide: 0.02)); },)),
         
        ],
      ),
    );
  }
}
