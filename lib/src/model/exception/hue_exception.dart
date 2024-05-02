import 'package:hue_dart/src/model/error/hue_base_error.dart';

sealed class HueException implements Exception {
  final List<String> messages;
  final int code;
  final String address;

  HueException(this.messages, {this.code = 0, this.address = ""});

  factory HueException.fromHueError(List<HueBaseError> errors) =>
      HueExceptionMultipleError(errors.map((e) => e.description).toList());

  @override
  String toString() => messages.join("\n");
}

class HueExceptionUnknownError extends HueException {
  HueExceptionUnknownError() : super(["An unknown error occurred"]);
}

class HueExceptionMultipleError extends HueException {
  HueExceptionMultipleError(super.messages);
}

class HueExceptionNetworkError extends HueException {
  HueExceptionNetworkError() : super(["A network error occurred"]);
}
