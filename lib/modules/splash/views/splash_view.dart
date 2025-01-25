import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/constants/image_path_constants.dart';
import '../../../common/theme/app_size.dart';
import '../../../common/widgets/custom_image.dart';
import '../../home/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String path = '/splash';
  static const String name = 'splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      debugPrint('SplashView');
      context.goNamed(HomeView.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(PngImages.splashBackgrondImage))),
        child: CustomImage(
          assetName: PngImages.logoImage,
          height: AppSize.size200,
        ),
      ),
    );
  }
}
