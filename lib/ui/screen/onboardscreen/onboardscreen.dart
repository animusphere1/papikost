import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skripsi/ui/constant/constantcolor.dart';
import 'package:skripsi/ui/constant/constantlist.dart';
import 'package:skripsi/ui/constant/constantmediaquery.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController _pageviewController = PageController();
  int indexOnPageChange = 0;

  int panjanglist = onboardingscreenlist.length - 1;
  bool status = false;

  void swapHalaman(int index) {
    setState(() {
      indexOnPageChange = index;
    });
  }

  // void halamanswapsendiri() {
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     if (indexOnPageChange != panjanglist && status == false) {
  //       _pageviewController.nextPage(
  //           duration: Duration(seconds: 1), curve: Curves.linear);
  //     }

  //     if (indexOnPageChange == panjanglist) {
  //       @override
  //       void dispose() {
  //         super.dispose();
  //         _pageviewController.dispose();
  //       }
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    _pageviewController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    // halamanswapsendiri();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          pageviewOnBoard(),
          floatingButtonOnBoard(mediaQuery(context)),
          dotsindicator(mediaQuery(context)),
        ],
      ),
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
            // changehalaman();
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
                "Next",
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
    return PageView.builder(
        onPageChanged: (index) {
          swapHalaman(index);
        },
        controller: _pageviewController,
        itemCount: onboardingscreenlist.length,
        itemBuilder: (context, i) {
          return onboardingscreen(i);
        });
  }

  //dotsindicator
  Widget dotsindicator(MediaQueryData mediaQuery) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
            top: mediaQuery.size.height / 2.0 - 32.0, left: 32.0),
        child: DotsIndicator(
          dotsCount: onboardingscreenlist.length,
          position: indexOnPageChange.toDouble(),
          decorator: DotsDecorator(
            spacing: EdgeInsets.all(3.0),
            color: Colors.grey,
            activeColor: Hexcolor('#ff9a0d'),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
