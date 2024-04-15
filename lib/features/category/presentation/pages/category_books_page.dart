import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/book_list_widget.dart';
import 'package:fruit_e_commerce/core/widgets/search_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBooksPage extends StatelessWidget {
  const CategoryBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Classics",
          style: GoogleFonts.outfit().copyWith(fontWeight: FontWeight.bold, fontSize: context.getHight(divide: 0.04)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: context.getHight(divide: 0.032), left: context.getWidth(divide: 0.037), right: context.getWidth(divide: 0.037)),
        child:  Column(
          children:  [
           const SearchBarWidget(),
             SizedBox(
            height: context.getHight(divide: 0.02),
          ),
           const Expanded(child: BookListWidget()),
          ],
        ),
      ),
    );
  }
}
