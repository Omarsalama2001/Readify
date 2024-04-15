import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookPreveiwPage extends StatefulWidget {
  const BookPreveiwPage({Key? key}) : super(key: key);

  @override
  State<BookPreveiwPage> createState() => _BookPreveiwPageState();
}

class _BookPreveiwPageState extends State<BookPreveiwPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfViewerController;
  int currentPage = 1;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: context.getDefaultSize() * 2.5),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Text("Aa", style: GoogleFonts.inter().copyWith(color: Colors.white, fontSize: context.getDefaultSize() * 3))),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: context.getDefaultSize() * 3,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.color_lens,
                color: Colors.white,
                size: context.getDefaultSize() * 3,
              )),
        ],
        title: Text(
          " Lean UX: Applying Lean Principles to Improve User Experience",
          style: GoogleFonts.inter().copyWith(color: Colors.white, fontSize: context.getDefaultSize() * 1.7),
        ),
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Column(
          children: [
            Expanded(
              child: SfPdfViewer.asset(
                controller: _pdfViewerController,
                otherSearchTextHighlightColor: Colors.amber,
                canShowPaginationDialog: true,
                canShowPageLoadingIndicator: true,
                canShowScrollStatus: true,
                pageSpacing: context.getHight(divide: 0.05),
                onPageChanged: (details) {
                  setState(() {
                    currentPage = details.newPageNumber;
                  });
                },
                'assets/icons/bookex.pdf',
                key: _pdfViewerKey,
              ),
            ),
          ],
        ),
        // Padding(
        //   padding:  EdgeInsets.all(context.getDefaultSize()*3),
        //   child: Text(currentPage.toString()  +" of "+_pdfViewerController.pageCount.toString() ,style: GoogleFonts.inter().copyWith(color: Colors.black,fontSize: context.getDefaultSize()*1.7),),
        // )
      ]),
    );
  }
}
