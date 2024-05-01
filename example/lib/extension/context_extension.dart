import 'package:example/helper/error_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:hue_dart/hue_dart.dart';

extension ContextExtension on BuildContext {
  Future<void> displayError(HueException error) {
    final errorDetail = errorTitleAndMessage(error);
    return showCupertinoDialog(
        context: this,
        builder: (ctx) => CupertinoAlertDialog(
                title: Text(errorDetail.$1),
                content: Text(errorDetail.$2),
                actions: [
                  CupertinoDialogAction(
                    child: const Text('Ok'),
                    onPressed: () => Navigator.of(ctx).pop(),
                  )
                ]));
  }
}
