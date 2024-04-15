import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';

class ChatBubble extends StatelessWidget {
  final bool isbotMessage;
  const ChatBubble({
    Key? key,
    required this.isbotMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isbotMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(context.getDefaultSize()),
        child: Column(
          crossAxisAlignment: isbotMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(context.getDefaultSize() * 3),
                  bottomLeft: isbotMessage ? Radius.circular(context.getDefaultSize() * 3) : const Radius.circular(0),
                  topRight: Radius.circular(context.getDefaultSize() * 3),
                  bottomRight: !isbotMessage ? Radius.circular(context.getDefaultSize() * 3) : const Radius.circular(0),
                ),
                color: isbotMessage ? AppColors.primaryColor : Colors.white,
                border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.getDefaultSize() * 2),
                child: Text(
                 isbotMessage? "Welcome to the chatbot, how can I help you ?":"Hello Chatbot, can you help me ?",
                  style: TextStyle(color: isbotMessage ? Colors.white : Colors.black, fontSize: context.getDefaultSize() * 1.5, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: isbotMessage ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  "10:00 AM",
                  style: TextStyle(color: Colors.grey, fontSize: context.getHight(divide: 0.015)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
