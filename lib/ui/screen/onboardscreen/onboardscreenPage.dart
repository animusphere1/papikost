import 'package:flutter/material.dart';
import 'package:skripsi/ui/constant/constantmediaquery.dart';
import 'widget/widgetsonboard.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardScreenPage extends StatefulWidget {
  final bgcolor;
  final text;

  const OnBoardScreenPage({this.bgcolor, this.text});

  @override
  _OnBoardScreenPageState createState() => _OnBoardScreenPageState();
}

class _OnBoardScreenPageState extends State<OnBoardScreenPage> {
  List<double> doubleHeight = [4.0, 3.5, 3.0];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        OnBoardBackground(widget: widget),
        _textTheWord(mediaQuery(context)),
        _textField(mediaQuery(context)),
      ],
    );
  }

  Widget _textTheWord(MediaQueryData mediaQuery) {
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
            top: mediaQuery.size.height / 4.5 - 32.0, left: 32.0),
        child: Text(
          widget.text != null ? widget.text : "Apa saja",
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _textField(MediaQueryData mediaQuery) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
            top: mediaQuery.size.height / 3.4 - leftPaddingOnBoard,
            left: leftPaddingOnBoard),
        child: Container(
          width: mediaQuery.size.width / 2.0,
          child: Text(
            "Sekarang Cari Kost Semudah Rebahan",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
              wordSpacing: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
