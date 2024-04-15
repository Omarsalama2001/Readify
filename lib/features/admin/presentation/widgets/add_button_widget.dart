import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffD9D9D9))),
        child: Text(
          'Add +',
          style: GoogleFonts.montserrat().copyWith(color: Colors.white, fontSize: context.getDefaultSize() * 2.5, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
