import 'package:flutter/material.dart';

import '../constants/image_path_constants.dart';
import '../theme/app_colors.dart';
import '../theme/app_geometry.dart';
import 'custom_sized_box.dart';
import 'custom_svg.dart';
import 'custom_text_widget.dart';

class RoundedButton extends StatelessWidget {
  final double? height;
  final double? svgHeight;
  final double? svgWidth;
  final double? width;
  final String text;
  final Gradient borderColor;
  final Color containerColor;
  final Color svgColor;
  final Color textColor;
  final BoxFit fit;
  final VoidCallback? onTap;

  const RoundedButton(
      {super.key,
      required this.text,
      this.svgHeight,
      this.svgWidth,
      required this.borderColor,
      required this.containerColor,
      required this.svgColor,
      required this.textColor,
      this.height,
      this.width,
      this.fit = BoxFit.cover,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.transparent,
            ),
            borderRadius: AppBorderRadius.a50,
            gradient: borderColor,
          ),
          child: Container(
              padding: AppEdgeInsets.h20v15,
              decoration: const BoxDecoration(
                borderRadius: AppBorderRadius.a50,
                color: AppColors.black,
              ),
              child: FittedBox(
                fit: fit,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text28W600(
                      text,
                      color: textColor,
                    ),
                    const SBW15(),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
