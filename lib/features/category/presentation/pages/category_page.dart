import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/features/category/presentation/widgets/category_page_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:_buildBody(context)
    );
  }

  _buildBody(BuildContext context) => const CategoryPageWidget();
}
