import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helper/widget/loading_indicator.dart';

class IosDialogHelper{
  void showLoading({BuildContext context, String title = "Loading"}) {
    showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (context) => CupertinoAlertDialog(
          title: Text(title, style: TextStyle(color: Colors.black)),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LoadingIndicator(),
          ),
        ));
  }

  void showMessage(BuildContext context, String title, String message) {
    showDialog<String>(
        context: context,
        barrierDismissible: true,
        builder: (context) => CupertinoAlertDialog(
          title: Text(title, style: TextStyle(color: Colors.black)),
          content: Text(message, style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context, 'Discard');
              },
            )
          ],
        ));
  }

  void showConfirm(BuildContext context, String title, String message, Function onOkayPressed) {
    showDialog<String>(
        context: context,
        barrierDismissible: true,
        builder: (context) => CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Cancel', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.pop(context, 'Discard');
              },
            ),
            CupertinoDialogAction(
              child: const Text('OK', style: TextStyle(color: Colors.black)),
              onPressed: (){
                Navigator.of(context).pop();
                onOkayPressed();
              },
            ),
          ],
        ));
  }
}