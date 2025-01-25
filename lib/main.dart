import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/constants/app_strings_constants.dart';
import 'common/theme/app_theme.dart';
import 'common/widgets/custom_screenutil.dart';
import 'routes/route_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return CustomScreenUtil(builder: (context) {
      return MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: AppStrings.techBuilders,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.system,
        builder: (context, widget) {
          return ScrollConfiguration(
            behavior: const _ScrollBehaviorModified(),
            child: widget!,
          );
        },
      );
    });
  }
}

class _ScrollBehaviorModified extends ScrollBehavior {
  const _ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics();
  }
}
