import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:skripsi/core/viewmodel/onboard_provider.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';
import 'package:skripsi/ui/constant/constantlist.dart';
import 'package:skripsi/ui/constant/constantmediaquery.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController _pageviewController = PageController();
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _pageviewController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    print(onboardingscreenlist.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Stack(children: <Widget>[
        pageviewOnBoard(),
        floatingButtonOnBoard(mediaQuery(context)),
        dotsindicator(mediaQuery(context)),
        _logoText(mediaQuery(context)),
      ]),
    );
  }

  //floatingactionbutton
  Widget floatingButtonOnBoard(MediaQueryData mediaQuery) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
            top: mediaQuery.size.height / 2.0 - 32.0, right: 32.0),
        child: GestureDetector(
          onTap: () {
            Provider.of<OnBoardProvider>(context, listen: false)
                .indexdotsgantiklik(_pageviewController);
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorButtonOnBoardScreen,
              border: Border.all(
                color: colorButtonOnBoardScreen,
              ),
            ),
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //pageview
  Widget pageviewOnBoard() {
    return Builder(builder: (context) {
      return Consumer<OnBoardProvider>(builder: (context, onboardprovider, _) {
        return PageView.builder(
            scrollDirection: Axis.horizontal,
            physics: AlwaysScrollableScrollPhysics(),
            onPageChanged: (index) {
              onboardprovider.indexdotsganti(index);
            },
            controller: _pageviewController,
            itemCount: onboardingscreenlist.length ?? 0,
            itemBuilder: (context, i) {
              return onboardingscreenlist[i];
            });
      });
    });
  }

  //dotsindicator
  Widget dotsindicator(MediaQueryData mediaQuery) {
    return Builder(builder: (context) {
      return Consumer<OnBoardProvider>(
        builder: (context, onboardprovider, _) {
          return Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  top: mediaQuery.size.height / 2.0 - 32.0, left: 32.0),
              child: DotsIndicator(
                dotsCount: onboardingscreenlist.length,
                position: onboardprovider.indexdots.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.all(4.0),
                  color: Colors.grey,
                  activeColor: Hexcolor('#ff9a0d'),
                  activeSize: Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ),
          );
        },
      );
    });
  }

  List<Map<String, List<Map<String, dynamic>>>> nama = [
    {
      'nama': [
        {'sekolah': '1'},
        {'sekolah': '2'}
      ]
    },
    {
      'nama': [
        {'sekolah': '2'}
      ]
    }
  ];

  Widget _logoText(MediaQueryData mediaQuery) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
            top: mediaQuery.size.height / 8.0 - 32.0, left: 32.0),
        child: Text(
          nama[0]['nama'][0]['sekolah'],
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
