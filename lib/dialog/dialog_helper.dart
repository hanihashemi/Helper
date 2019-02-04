import 'package:flutter/material.dart';
import 'package:helper/dialog/android_dialog_helper.dart';
import 'package:helper/dialog/ios_dialog_helper.dart';

class DialogHelper {
  void showLoading(BuildContext context, {String title = "Loading"}) {
    if (Theme.of(context).platform == TargetPlatform.iOS)
      IosDialogHelper().showLoading(context: context, title: title);
    else
      AndroidDialogHelper().showLoading(context: context, title: title);
  }

  void showMessage(BuildContext context, String title, String message) {
    if (Theme.of(context).platform == TargetPlatform.iOS)
      IosDialogHelper().showMessage(context, title, message);
    else
      AndroidDialogHelper().showMessage(context, title, message);
  }

  void showConfirm(BuildContext context, String title, String message,
      Function onOkayPressed) {
    if (Theme.of(context).platform == TargetPlatform.iOS)
      IosDialogHelper().showConfirm(context, title, message, onOkayPressed);
    else
      AndroidDialogHelper().showConfirm(context, title, message, onOkayPressed);
  }
}
