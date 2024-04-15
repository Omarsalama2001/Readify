import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';

class BookAuthorItemWidget extends StatelessWidget {
  const BookAuthorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(height: context.getHight(divide: 0.18), width: context.getWidth(divide: 0.4), decoration: const BoxDecoration(image: DecorationImage(image: CachedNetworkImageProvider('https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Mark-manson-headshot-2018-1.jpg/640px-Mark-manson-headshot-2018-1.jpg'), fit: BoxFit.cover))),
      Text("Mark Manson", style: TextStyle(fontWeight: FontWeight.w400, fontSize: context.getDefaultSize() * 2)),
    ]);
  }
}
