import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';
import 'package:fruit_e_commerce/features/ai/presentation/widgets/chatingWidgets/chat_bubble_widget.dart';

class ChatingWidget extends StatelessWidget {
  const ChatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            physics:const BouncingScrollPhysics(),
            children: const [
              ChatBubble(isbotMessage: true),
              ChatBubble(isbotMessage: false),
              ChatBubble(isbotMessage: true),
              ChatBubble(isbotMessage: false),
              ChatBubble(isbotMessage: true),
               ChatBubble(isbotMessage: false),
              ChatBubble(isbotMessage: true),
            ],
          ),
        ),
        chatingTextField(context),
      ],
    );
  }

  Widget chatingTextField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(context.getDefaultSize() * 4), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 2.0,
        ),
      ]),
      child: Padding(
        padding: EdgeInsets.all(context.getDefaultSize() * 0.4),
        child: TextField(
          cursorColor: AppColors.primaryColor,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'type message here...',
              suffixIcon: Container(
                padding: EdgeInsets.all(context.getDefaultSize() * 2.5),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(context.getDefaultSize() * 4),
                ),
                child: Icon(Icons.send, color: Colors.white, size: context.getDefaultSize() * 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.getDefaultSize() * 4),
                borderSide: const BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.getDefaultSize() * 4),
                borderSide: const BorderSide(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
