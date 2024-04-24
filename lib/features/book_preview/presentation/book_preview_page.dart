import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';

class BookPreveiwPage extends StatefulWidget {
  final String bookPdfUrl;
  final String bookName;

  const BookPreveiwPage({
    Key? key,
    required this.bookPdfUrl,
    required this.bookName,
  }) : super(key: key);

  @override
  State<BookPreveiwPage> createState() => _BookPreveiwPageState();
}

class _BookPreveiwPageState extends State<BookPreveiwPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfViewerController;
  late PdfTextSearchResult _searchResult;
  
  int currentPage = 1;
  bool isDarkMode = false;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
       _searchResult = PdfTextSearchResult();


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
              onPressed: () {
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: context.getDefaultSize() * 3,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon: Icon(
                Icons.color_lens,
                color: Colors.white,
                size: context.getDefaultSize() * 3,
              )),
        ],
        title: Text(
          widget.bookName,
          style: GoogleFonts.inter().copyWith(color: Colors.white, fontSize: context.getDefaultSize() * 1.7),
        ),
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Column(
          children: [
            Expanded(
              child: ColorFiltered(
                colorFilter: isDarkMode ? const ColorFilter.mode(Colors.white, BlendMode.difference) : const ColorFilter.mode(Colors.white, BlendMode.colorBurn),
                child: SfPdfViewer.network(
                  onDocumentLoadFailed: (details) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("something went wrong")));
                  },
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
                  widget.bookPdfUrl,
                  key: _pdfViewerKey,
                ),
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
