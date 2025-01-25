import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../common/constants/image_path_constants.dart';
import '../../common/extensions/context_extensions.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceHeight,
      alignment: Alignment.center,
      child: Center(child: Lottie.asset(AnimationsAssets.comingSoonAnimation)),
    );
  }
}
