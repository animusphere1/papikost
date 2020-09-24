import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
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

  bool status = false;
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey(debugLabel: "Coba Doang");

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
          onTap: () {},
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
                  color: status != true ? Colors.white : Colors.black12,
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
              return onboardingscreen(i);
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
                dotsCount: onboardingscreenlist.length != 0
                    ? onboardingscreenlist.length
                    : 3,
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
}
