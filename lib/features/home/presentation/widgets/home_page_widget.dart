import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';
import 'package:fruit_e_commerce/core/widgets/app_drawer.dart';
import 'package:fruit_e_commerce/core/widgets/book_list_widget.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulildAppBar(context),
      drawer: const AppDrawer(),
      body: const BookListWidget(),
     
    );
  }

  _bulildAppBar(BuildContext context) => AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/icons/drawer_icon.png',
                height: context.getDefaultSize() * 5,
                width: context.getWidth(divide: 0.1),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: SearchBar(
          textStyle: MaterialStatePropertyAll(TextStyle(fontSize: context.getDefaultSize() * 1.5)),
          shadowColor: const MaterialStatePropertyAll(Colors.white),
          elevation: const MaterialStatePropertyAll(0),
          constraints: BoxConstraints(minWidth: context.getWidth(divide: 0.7), minHeight: context.getHight(divide: 0.06)),
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          hintStyle: const MaterialStatePropertyAll(TextStyle(color: AppColors.subTitleColor)),
          leading: Icon(
            Icons.search,
            color: AppColors.subTitleColor,
            size: context.getDefaultSize() * 2,
          ),
          hintText: "Search book/title/author",
        ),
      );
}
