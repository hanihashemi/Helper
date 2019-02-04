import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color color;

  const LoadingIndicator({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoActivityIndicator()
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              color != null
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                    )
                  : CircularProgressIndicator(),
            ],
          );
  }
}
