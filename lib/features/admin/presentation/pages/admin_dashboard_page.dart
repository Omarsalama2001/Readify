import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';

import 'package:fruit_e_commerce/features/admin/presentation/widgets/table_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardPage extends StatefulWidget {
  AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  // ignore: prefer_final_fields
  String _value = 'Categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              underline: null,
              itemHeight: context.getHight(divide: 0.06),
              iconSize: context.getDefaultSize()*3,
              value: _value,
              items: <DropdownMenuItem<String>>[
            
                DropdownMenuItem(
                  value: 'Categories',
                  child: Text(
                    'Categories',
                    style: GoogleFonts.outfit().copyWith(fontWeight: FontWeight.w200, fontSize: context.getHight(divide: 0.04)),
                  ),
                ),
                DropdownMenuItem(
                    value: 'Books',
                    child: Text(
                      'Books',
                      style: GoogleFonts.outfit().copyWith(fontWeight: FontWeight.w200, fontSize: context.getHight(divide: 0.04)),
                    )),
              ],
              onChanged: (String? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
          )),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) => const TableWidget();
}
