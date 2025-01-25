import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../keys/key.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_geometry.dart';
import 'loading_dialog.dart';

class CustomDialog {
  static void _showDialog(
      {required Widget child,
      bool onWillPop = true,
      bool barrierDismissible = true,
      BorderRadiusGeometry borderRadius = AppBorderRadius.a5}) {
    showDialog(
      context: AppKeys.navigatorKey.currentContext!,
      barrierDismissible: barrierDismissible,
      builder: (context) => PopScope(
        canPop: onWillPop,
        child: Dialog(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: AppBorderRadius.a10,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.1),
                  blurRadius: 15,
                  offset: const Offset(5, 5),
                )
              ],
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  ///Generic dialog, pass any widget!
  static void dialog({
    required Widget child,
    bool barrierDismissible = true,
    bool onWillPop = true,
  }) {
    _showDialog(
      child: child,
      barrierDismissible: barrierDismissible,
      onWillPop: onWillPop,
    );
  }

  ///Call to close any open screen using go router!
  static void closeScreen() {
    final canPop = AppKeys.navigatorKey.currentContext!.canPop();
    if (canPop) {
      AppKeys.navigatorKey.currentContext?.pop();
    } else {}
  }

  ///Call to close any open dialog using navigator 1.0!
  static void closeDialog() {
    final canPop = Navigator.of(AppKeys.navigatorKey.currentContext!).canPop();
    if (canPop) {
      Navigator.of(AppKeys.navigatorKey.currentContext!).pop();
    }
  }

  ///Pre defined loading dialog
  static void loading({required String message}) {
    _showDialog(
      child: LoadingDialog(message: message),
      barrierDismissible: false,
      onWillPop: false,
    );
  }

  static void showCustomDialog({required Widget child}) {
    _showDialog(
      child: child,
      barrierDismissible: true,
      borderRadius: AppBorderRadius.a50,
      onWillPop: false,
    );
  }
}
