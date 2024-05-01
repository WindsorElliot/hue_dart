import 'package:hue_dart/hue_dart.dart';

(String, String) errorTitleAndMessage(HueException exception) {
  return switch (exception) {
    HueExceptionLinkButtonNotPressed _ => (
        "Link Button Not Pressed",
        "Please press the link button on the bridge before pair the app"
      ),
    _ => ("Error", "An unknown error occurred")
  };
}
