import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/features/favourites/presentation/widgets/favourites_page_widget.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
  Widget _buildBody(BuildContext context) =>const FavouritesPageWidget();
}
