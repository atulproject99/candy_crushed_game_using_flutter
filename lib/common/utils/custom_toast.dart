import 'package:fluttertoast/fluttertoast.dart';

import '../theme/app_colors.dart';

/// Utility class for displaying success and error messages with Toasr
class CustomToast {
  CustomToast._();

  static void showSuccess(String message) async {
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: AppColors.green,
      webBgColor: 'linear-gradient(to right, #008000, #008000)',
      textColor: AppColors.white,
    );
  }

  static void showError(String message) async {
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: AppColors.red,
      textColor: AppColors.white,
      webBgColor: 'linear-gradient(to right, #C90911, #C90911)',
    );
  }
}
