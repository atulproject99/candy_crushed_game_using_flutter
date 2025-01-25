import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/constants/image_path_constants.dart';

import '../../../common/extensions/context_extensions.dart';
import '../../../common/theme/app_size.dart';

import '../../../common/widgets/custom_image.dart';
import '../../../common/widgets/custom_lottie_asset.dart';
import '../../../routes/route_config.dart';
import '../../level/views/level_view.dart';
import '../widgets/custom_play_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String path = '/home';
  static const String name = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

    /// AudioUtils.playFromAsset(SfxAssets.bgAudio, loop: true);
  }

  @override
  void dispose() {
    /// AudioUtils.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  PngImages.background2,
                ),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: CustomImage(
                assetName: PngImages.bannerImage,
                height: AppSize.size350,
              ),
            ).animate().slideY(duration: const Duration(seconds: 3)),
            Positioned(
              top: AppSize.size220,
              left: -AppSize.size15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.scale(
                    scaleX: -1,
                    child: CustomLottieAsset(
                      assetName: AnimationAssets.birdAnimation,
                      repeat: true,
                      height: AppSize.size200,
                    ),
                  ),
                  Consumer(builder: (context, ref, child) {
                    return Container(
                        width: context.deviceWidth,
                        alignment: Alignment.center,
                        child: UnconstrainedBox(child: CustomPlayButton(
                          onTap: () {
                            ref.read(routerProvider).pushNamed(LevelView.name);
                          },
                        )));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
