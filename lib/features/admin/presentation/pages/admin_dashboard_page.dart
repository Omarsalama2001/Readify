import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/strings/messages.dart';
import 'package:fruit_e_commerce/features/admin/presentation/blocs/bloc/dashboard_bloc.dart';
import 'package:fruit_e_commerce/features/admin/presentation/widgets/table_widget.dart';
import 'package:fruit_e_commerce/features/category/presentation/blocs/bloc/category_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  // ignore: prefer_final_fields
  String _value = 'Categories';
  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().add(GetAllCategoreisDashEvent());
  }

  @override
  Widget build(BuildContext context) {
    DashboardBloc dashboardBloc = BlocProvider.of<DashboardBloc>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              underline: null,
              itemHeight: context.getHight(divide: 0.06),
              iconSize: context.getDefaultSize() * 3,
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
                  dashboardBloc.add(SwitchCategoryEvent(value: _value));
                });
              },
            ),
          )),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) => BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (state is DashboardSuccessState) {
            Fluttertoast.showToast(msg: state.successMessage, backgroundColor: Colors.green);
            if (state.successMessage == BOOK_ADDED || state.successMessage == Category_ADDED || state.successMessage == Category_UPDATED) {
              Navigator.pop(context);
            }
            context.read<DashboardBloc>().isCategorySelected ? context.read<DashboardBloc>().add(GetAllCategoreisDashEvent()) : context.read<DashboardBloc>().add(GetAllBookDashEvent());
          }
          if (state is DashboardErrorState) {
            Fluttertoast.showToast(msg: state.errorMessage, backgroundColor: Colors.red);

            context.read<DashboardBloc>().isCategorySelected ? context.read<DashboardBloc>().add(GetAllCategoreisDashEvent()) : context.read<DashboardBloc>().add(GetAllBookDashEvent());
          }
        },
        child: const TableWidget(),
      );
}
