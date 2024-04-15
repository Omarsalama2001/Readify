import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/book_details_widgets/book_details_widget.dart';
import 'package:fruit_e_commerce/core/widgets/rating_bar_widget.dart';

class FavouritesItemWidget extends StatelessWidget {
  const FavouritesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: const ColoredBox(
          color: Colors.red,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.delete, color: Colors.white),
            ),
          )),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => BookDetailsWidget()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(context.getHight(divide: 0.01)),
          ),
          height: context.getHight(divide: 0.23),
          child: Padding(
            padding: EdgeInsets.only(
              left: context.getHight(divide: 0.01),
              right: context.getHight(divide: 0.01),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: context.getHight(divide: 0.2),
                  width: context.getWidth(divide: 0.25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(context.getHight(divide: 0.01))),
                      image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                            'https://m.media-amazon.com/images/I/719fyFgdNJL._AC_UF1000,1000_QL80_.jpg',
                          ),
                          fit: BoxFit.cover))),
              SizedBox(
                width: context.getDefaultSize(),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: context.getHight(divide: 0.04)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hooked: How to think different ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: context.getHight(divide: 0.015), fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: context.getDefaultSize() * 0.5,
                      ),
                      Text(
                        "Nir Eyal",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: context.getHight(divide: 0.016)),
                      ),
                      SizedBox(
                        height: context.getDefaultSize(),
                      ),
                      const CustomRatingWidget(),
                     const Spacer(),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_outline,
                                size: context.getHight(divide: 0.04),
                              )))
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
