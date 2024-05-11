import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fruit_e_commerce/core/entities/book_entity.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/authintication_text_form_feild.dart';
import 'package:fruit_e_commerce/features/admin/presentation/blocs/bloc/dashboard_bloc.dart';
import 'package:fruit_e_commerce/features/admin/presentation/widgets/category_bottom_sheet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AddButtonWidget extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController numPagesController = TextEditingController();
  TextEditingController versionController = TextEditingController();
  TextEditingController coverController = TextEditingController();
  TextEditingController bookController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          context.read<DashboardBloc>().isCategorySelected
              ? categoryBottomsheet(context: context, isAdd: true)
              : _booksBottomSheet(
                  context,
                );
        },
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffD9D9D9))),
        child: Text(
          'Add +',
          style: GoogleFonts.montserrat().copyWith(color: Colors.white, fontSize: context.getDefaultSize() * 2.5, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _booksBottomSheet(BuildContext context) => showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (_) => Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: EdgeInsets.all(context.getDefaultSize() * 1.5),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  key: _formKey,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Add New Book",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(fontSize: context.getDefaultSize() * 2.5, fontWeight: FontWeight.bold),
                    ),
                    SingleChildScrollView(
                      child: Column(children: [
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(hinttext: "Title", mycontroller: titleController, obscureText: false),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(hinttext: "Description", mycontroller: descriptionController, obscureText: false),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DropdownMenu(
                              width: context.getWidth(divide: 0.5),
                              dropdownMenuEntries: List.generate(context.read<DashboardBloc>().categories.length, (index) => DropdownMenuEntry(value: context.read<DashboardBloc>().categories[index].name, label: context.read<DashboardBloc>().categories[index].name)),
                              hintText: "Category",
                              controller: categoryController,
                            ),
                            SizedBox(
                              width: context.getWidth(divide: 0.1),
                            ),
                            DropdownMenu(
                              width: context.getWidth(divide: 0.3),
                              dropdownMenuEntries: List.generate(50, (index) => DropdownMenuEntry(value: (index + 1).toString(), label: (index + 1).toString())),
                              hintText: "Version",
                              controller: versionController,
                            )
                          ],
                        ),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: context.getWidth(divide: 0.5),
                              child: CustomAuthTextForm(
                                hinttext: "Number of pages",
                                mycontroller: numPagesController,
                                obscureText: false,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(
                              width: context.getWidth(divide: 0.4),
                              child: CustomAuthTextForm(
                                hinttext: "Rate",
                                mycontroller: rateController,
                                obscureText: false,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(hinttext: "Cover Image Link", mycontroller: coverController, obscureText: false),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(hinttext: "BooK Link", mycontroller: bookController, obscureText: false),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(hinttext: "Author Name", mycontroller: authorController, obscureText: false),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        CustomAuthTextForm(
                          hinttext: "Publishing Date",
                          keyboardType: TextInputType.datetime,
                          mycontroller: dateController,
                          obscureText: false,
                          readOnly: true,
                          onTap: () async {
                            showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365))).then((value) {
                              dateController.text = DateFormat('dd-MM-yyyy').format(value!);
                            });
                          },
                        ),
                        SizedBox(
                          height: context.getDefaultSize(),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: context.getHight(divide: 0.06),
                            child: BlocConsumer<DashboardBloc, DashboardState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                if (state is DashboardLoadingState) {
                                  return const Center(child: CircularProgressIndicator());
                                }
                                return ElevatedButton(
                                  onPressed: () {
                                    if (bookController.text.isNotEmpty && authorController.text.isNotEmpty && coverController.text.isNotEmpty && numPagesController.text.isNotEmpty && dateController.text.isNotEmpty && rateController.text.isNotEmpty && versionController.text.isNotEmpty && categoryController.text.isNotEmpty && descriptionController.text.isNotEmpty && titleController.text.isNotEmpty) {
                                      BlocProvider.of<DashboardBloc>(context).add(AddBookEvent(
                                          book: BookEntity(
                                        title: titleController.text,
                                        description: descriptionController.text,
                                        rate: double.parse(rateController.text),
                                        numberOfPages: int.parse(numPagesController.text),
                                        bookCover: coverController.text,
                                        author: authorController.text,
                                        bookPdf: bookController.text,
                                        bookRatingCount: 0,
                                        bookId: "null",
                                        bookReviewCount: 0,
                                        bookVersion: versionController.text,
                                        categoryId: context.read<DashboardBloc>().categories.where((element) => element.name == categoryController.text).first.categoryId,
                                        publishingDate: DateTime.now(), //solve
                                      )));
                                    } else {
                                      Fluttertoast.showToast(msg: "Please fill all the fields", backgroundColor: Colors.amber);
                                    }
                                  },
                                  child: const Text(
                                    "Add Book",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            )),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ));
}
