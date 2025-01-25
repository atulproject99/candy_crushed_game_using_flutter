class Sizes {
  static const double _defaultWidth = 360;
  static const double _defaultHeight = 690;

  static double get defaultWidth => _defaultWidth;

  static double get defaultHeight => _defaultHeight;

  static double width = defaultWidth;
  static double height = defaultHeight;
}

extension SizeExtenstion on num {
  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => Sizes.width < Sizes.height
      ? this * (Sizes.width / Sizes.defaultWidth)
      : this * (Sizes.height / Sizes.defaultHeight);
}
