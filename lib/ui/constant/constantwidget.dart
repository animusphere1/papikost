import 'package:flutter/material.dart';
import 'constantcolor.dart';
import 'constantmediaquery.dart';

SizedBox sizeBoxTranstparant = SizedBox(
  height: 15,
);

Divider dividerTranstparant = Divider(
  color: Colors.transparent,
);

//showmodalbottomsheetconstant
bottomsheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              color: colorButtonOnBoardScreen,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          height: mediaQuery(context).size.height * 0.5,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                RaisedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        );
      });
}
