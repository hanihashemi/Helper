import 'package:flutter/material.dart';
import 'package:helper/widget/loading_indicator.dart';

class AndroidDialogHelper {
  void showLoading({BuildContext context, String title = "Loading"}) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Loading',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          content: LoadingIndicator(),
        );
      },
    );
  }

  void showMessage(BuildContext context, String title, String message) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            FlatButton(
              child: Text('OK', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          title: Text(title, style: TextStyle(color: Colors.black)),
          content: SingleChildScrollView(
            child: Text(message, style: TextStyle(color: Colors.black)),
          ),
        );
      },
    );
  }

  void showConfirm(BuildContext context, String title, String message,
      Function onOkayPressed) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('OK', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
                onOkayPressed();
              },
            ),
          ],
          title: Text(title, style: TextStyle(color: Colors.black)),
          content: SingleChildScrollView(
            child: Text(message),
          ),
        );
      },
    );
  }
}
