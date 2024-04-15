import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';
import 'package:fruit_e_commerce/core/widgets/book_details_widgets/book_details_image_widget.dart';
import 'package:fruit_e_commerce/core/widgets/book_details_widgets/book_details_types_widget.dart';
import 'package:fruit_e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsWidget extends StatelessWidget {
  
 const BookDetailsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      
      crossAxisAlignment: CrossAxisAlignment.start, children: [
         
          Padding(
            padding: EdgeInsets.all(context.getDefaultSize()),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  BookDetailsImageWidget(),
                SizedBox(
                  width: context.getWidth(divide: 0.9),
                  child: Text(
                    "Lean UX: Applying Lean Principles to Improve User Experience ",
                    style: GoogleFonts.nunito().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: context.getDefaultSize() * 2,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Umberto Eco | 1980",
                    style: GoogleFonts.nunito().copyWith(
                      fontSize: context.getDefaultSize() * 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    BookDetailsTypesWidget(),
                    Image.asset(
                      "assets/icons/star_icon.png",
                      height: context.getDefaultSize() * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: context.getDefaultSize()),
                      child: Text(
                        "4.5",
                        style: GoogleFonts.nunito().copyWith(fontSize: context.getDefaultSize() * 2, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(context.getDefaultSize() * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const CustomeElevetedButton(text: 'Read Now'),
                          SizedBox(
                            height: context.getDefaultSize(),
                          ),
                          const CustomeElevetedButton(text: 'Read Summary'),
                        ],
                      ),
                      Column(
                        children: [
                          RatingBar.builder(itemBuilder: (item, index) => const Icon(Icons.star, color: Colors.amber), onRatingUpdate: (rating) {}, itemSize: context.getDefaultSize() * 2.5, itemCount: 5, allowHalfRating: true,initialRating: 3.5,glowColor: AppColors.primaryColor,),
                          SizedBox(
                            height: context.getDefaultSize(),
                          ),
                          Text(
                            "Rate this book",
                            style: GoogleFonts.nunito().copyWith(fontSize: context.getDefaultSize() * 1.7, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppColors.subTitleColor,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.all(context.getDefaultSize()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
              Text(
                'Description :-',
                style: GoogleFonts.nunito().copyWith(fontSize: context.getDefaultSize() * 2, fontWeight: FontWeight.bold),
              ),
            
              Padding(
                padding:  EdgeInsets.all(context.getDefaultSize()),
                child: Text("The UX Book: Process and Guidelines for Ensuring a Quality User Experience aims to help readers learn how to create and refine interaction designs that ensure a quality user experience (UX).", style: GoogleFonts.nunito().copyWith(fontSize: context.getDefaultSize() * 1.7, fontWeight: FontWeight.w300)),
              ),
              
            ]),
          )
        ]),
  );
}
