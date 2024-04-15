import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/search_bar_widget.dart';

class AiSearchWithDesc extends StatelessWidget {
  const AiSearchWithDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) => Padding(
      padding: EdgeInsets.only(top: context.getHight(divide: 0.032), left: context.getWidth(divide: 0.037), right: context.getWidth(divide: 0.037), bottom: context.getHight(divide: 0.05)),
        child: const Column(mainAxisSize: MainAxisSize.max, children: [
          SearchBarWidget(),
          Spacer(),
          Align(alignment: Alignment.bottomRight, child: Image(image: AssetImage('assets/icons/chat_bot_search_image.png'),filterQuality: FilterQuality.high,)),
        ]),
      );
}
