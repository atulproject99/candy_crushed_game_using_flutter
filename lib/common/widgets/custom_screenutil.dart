import 'package:flutter/cupertino.dart';

import '../extensions/size_extensions.dart';

class CustomScreenUtil extends StatelessWidget {
  const CustomScreenUtil({super.key, required this.builder});

  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    Sizes.width = size.width;
    Sizes.height = size.height;
    if (Sizes.width != 0 && Sizes.height != 0) {
      debugPrint(
          'CustomScreenUtil: Width: ${Sizes.width} Height: ${Sizes.height}');
      return Builder(builder: builder);
    } else {
      // debugPrint('CustomScreenUtil: Width and Height are 0');
      return Container();
    }
  }
}
