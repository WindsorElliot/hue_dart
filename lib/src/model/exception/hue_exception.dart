sealed class HueException implements Exception {
  final String message;
  final int code;
  final String address;

  HueException(this.message, {this.code = 0, this.address = ""});

  factory HueException.fromCode(int code) {
    switch (code) {
      case 101:
        return HueExceptionLinkButtonNotPressed();
      case 1:
        return HueExceptionUnauthorizedUser();
      case 201:
        return HueExceptionBodyTooLarge();
      case 203:
        return HueExceptionInvalidValue();
      case 400:
        return HueExceptionParameterNotAvailable();
      case 401:
        return HueExceptionParameterNotModifiable();
      case -1:
        return HueExceptionNetwork();
      default:
        return HueExceptionUnknown();
    }
  }

  @override
  String toString() => message;
}

class HueExceptionLinkButtonNotPressed extends HueException {
  HueExceptionLinkButtonNotPressed({String address = ""})
      : super("Link button not pressed", code: 101, address: address);
}

class HueExceptionUnauthorizedUser extends HueException {
  HueExceptionUnauthorizedUser({String address = ""})
      : super("Unauthorized user", code: 1, address: address);
}

class HueExceptionBodyTooLarge extends HueException {
  HueExceptionBodyTooLarge({String address = ""})
      : super("Body too large", code: 201, address: address);
}

class HueExceptionInvalidValue extends HueException {
  HueExceptionInvalidValue({String address = ""})
      : super("Invalid value", code: 203, address: address);
}

class HueExceptionParameterNotAvailable extends HueException {
  HueExceptionParameterNotAvailable({String address = ""})
      : super("Parameter not available", code: 400, address: address);
}

class HueExceptionParameterNotModifiable extends HueException {
  HueExceptionParameterNotModifiable({String address = ""})
      : super("Parameter not modifiable", code: 401, address: address);
}

class HueExceptionUnknown extends HueException {
  HueExceptionUnknown()
      : super(
          "Unknown error",
        );
}

class HueExceptionNetwork extends HueException {
  HueExceptionNetwork()
      : super(
          "Network error",
        );
}
