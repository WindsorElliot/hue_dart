import 'package:hue_dart/hue_dart.dart';

(String, String) errorTitleAndMessage(HueException exception) {
  return switch (exception) {
    HueExceptionMultipleError _ => (
        "Error",
        exception.toString(),
      ),
    _ => ("Error", exception.toString())
  };
}
