import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_geometry.dart';
import '../../theme/app_size.dart';

import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_text_widget.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        height: AppSize.size200,
        width: AppSize.size190,
        decoration: const BoxDecoration(
          color: AppColors.darkColor,
          borderRadius: AppBorderRadius.a10,
        ),
        child: const Padding(
          padding: AppEdgeInsets.a20,
          child: Column(
            children: [
              CircularProgressIndicator(),
              SBH30(),
              Text22W400('Loading..'),
            ],
          ),
        ),
      ),
    );
  }
}
