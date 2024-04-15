import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/features/book_preview/presentation/book_preview_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeElevetedButton extends StatelessWidget {
  final String text;
  const CustomeElevetedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(divide: 0.5),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const BookPreveiwPage()));
        },
        style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.getHight(divide: 0.01)))), padding: MaterialStatePropertyAll(EdgeInsets.only(left: context.getDefaultSize() * 4, right: context.getDefaultSize() * 4, top: context.getDefaultSize() * 1.5, bottom: context.getDefaultSize() * 1.5))),
        child: Text(
          text,
          style: GoogleFonts.nunito().copyWith(fontSize: context.getDefaultSize() * 1.8, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
