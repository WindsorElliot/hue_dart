import 'dart:math';
import 'dart:ui';

extension ColorExtension on Color {
  (double, double) toXY() {
    final r = this.red / 255;
    final g = this.green / 255;
    final b = this.blue / 255;

    final red =
        (r > 0.04045) ? pow((r + 0.055) / (1.0 + 0.055), 2.4) : (r / 12.92);
    final green =
        (g > 0.04045) ? pow((g + 0.055) / (1.0 + 0.055), 2.4) : (g / 12.92);
    final blue =
        (b > 0.04045) ? pow((b + 0.055) / (1.0 + 0.055), 2.4) : (b / 12.92);

    double x = red * 0.649926 + green * 0.103455 + blue * 0.197109;
    double y = red * 0.234327 + green * 0.743075 + blue * 0.022598;
    final z = red * 0.0000000 + green * 0.053077 + blue * 1.035763;

    x = x / (x + y + z);
    y = y / (x + y + z);

    return (x, y);
  }

  static Color fromXY(double x, double y, double brightness) {
    final z = 1.0 - x - y;
    final Y = brightness;
    final X = (Y / y) * x;
    final Z = (Y / y) * z;

    double r = X * 1.4628067 - Y * 0.1840623 - Z * 0.2743606;
    double g = -X * 0.5217933 + Y * 1.4472381 + Z * 0.0677227;
    double b = X * 0.0349342 - Y * 0.0968930 + Z * 1.2884099;

    r = r <= 0.0031308
        ? 12.92 * r
        : (1.0 + 0.055) * pow(r, (1.0 / 2.4)) - 0.055;
    g = g <= 0.0031308
        ? 12.92 * g
        : (1.0 + 0.055) * pow(g, (1.0 / 2.4)) - 0.055;
    b = b <= 0.0031308
        ? 12.92 * b
        : (1.0 + 0.055) * pow(b, (1.0 / 2.4)) - 0.055;

    r = r * 255;
    g = g * 255;
    b = b * 255;

    return Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt());
  }
}
