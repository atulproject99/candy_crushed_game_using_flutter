import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/context_extensions.dart';
import '../theme/app_colors.dart';
import 'custom_sized_box.dart';
import 'custom_text_widget.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final int? maxLines;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;

  CustomTextFormField(
      {super.key,
      required this.title,
      this.controller,
      this.maxLines,
      this.onChanged,
      this.initialValue,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text24W600(title),
        const SBH10(),
        TextFormField(
          cursorColor: AppColors.white,
          maxLines: maxLines,
          controller: controller,
          inputFormatters: inputFormatters,
          initialValue: initialValue,
          onChanged: onChanged,
          decoration: const InputDecoration(
            hintText: 'Type here',
          ),
          style: context.textTheme.titleLarge!.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
