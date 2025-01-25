import 'package:flutter/material.dart';

import '../constants/image_path_constants.dart';
import '../theme/app_size.dart';
import 'custom_sized_box.dart';
import 'custom_svg.dart';

class CustomAppLogo extends StatelessWidget {
  const CustomAppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSize.size5,
      children: [
        const CustomSvg(
          assetName: SvgImages.techBuildersLogo,
        ),
        const SBW10(),
        const CustomSvg(
          assetName: SvgImages.techBuildersText,
        ),
      ],
    );
  }
}
