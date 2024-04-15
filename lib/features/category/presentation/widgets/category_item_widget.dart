import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/features/category/presentation/pages/category_books_page.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) =>const CategoryBooksPage()));
      },
      child: Stack(children: [
        Container(
          height: context.getHight(divide: 0.18),
          width: context.getWidth(divide: 0.46),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(context.getHight(divide: 0.01))), image: const DecorationImage(image: AssetImage('assets/icons/category_image.png'), fit: BoxFit.cover)),
        ),
        Container(
          height: context.getHight(divide: 0.18),
          width: context.getWidth(divide: 0.46),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(context.getHight(divide: 0.01))),
            gradient: LinearGradient(
              begin: const Alignment(0.00, -1.00),
              end: const Alignment(0, 1),
              colors: [Colors.black, Colors.black.withOpacity(0.3)],
            ),
          ),
          child: Center(
            child: Text(
              "Classic",
              style: TextStyle(fontSize: context.getHight(divide: 0.03), color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
