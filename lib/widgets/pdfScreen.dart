import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFScreen extends StatefulWidget {
  final String path;

  const PDFScreen({Key? key, required this.path}) : super(key: key);

  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Report'),
      ),
      body: PDFView(
        filePath: widget.path,
        autoSpacing: false,
        swipeHorizontal: true,
        pageFling: true,
      ),
    );
  }
}
