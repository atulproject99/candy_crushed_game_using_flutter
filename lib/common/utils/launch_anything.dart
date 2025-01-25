import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_toast.dart';

class LaunchAnything {
  static Future<void> externalApp({required String url}) async {
    try {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } on PlatformException catch (error) {
      CustomToast.showError(error.message ?? 'Unable to find url');
    }
  }
}
