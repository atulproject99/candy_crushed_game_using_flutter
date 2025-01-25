import 'package:flutter/cupertino.dart';

import '../extensions/context_extensions.dart';
import '../theme/app_size.dart';

class Text64W700 extends StatelessWidget {
  const Text64W700(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.displayLarge?.copyWith(color: color),
    );
  }
}

class Text57W600 extends StatelessWidget {
  const Text57W600(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.displayMedium!.copyWith(color: color),
    );
  }
}

class Text38W600 extends StatelessWidget {
  const Text38W600(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.displaySmall!.copyWith(color: color),
    );
  }
}

class Text24W600 extends StatelessWidget {
  const Text24W600(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headlineSmall!.copyWith(color: color),
    );
  }
}

class Text24W400 extends StatelessWidget {
  const Text24W400(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.titleLarge!
          .copyWith(color: color, fontSize: AppSize.size24),
    );
  }
}

class Text28W600 extends StatelessWidget {
  const Text28W600(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headlineMedium!.copyWith(color: color),
    );
  }
}

class Text32W400 extends StatelessWidget {
  const Text32W400(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.textTheme.headlineLarge!.copyWith(color: color),
    );
  }
}

class Text22W400 extends StatelessWidget {
  const Text22W400(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      style: context.textTheme.titleLarge!.copyWith(color: color),
    );
  }
}

class Text16W500 extends StatelessWidget {
  const Text16W500(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.titleMedium!.copyWith(color: color),
    );
  }
}

class Text18W400 extends StatelessWidget {
  const Text18W400(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.bodyLarge!
          .copyWith(color: color, fontSize: AppSize.size18),
    );
  }
}

class Text16W400 extends StatelessWidget {
  const Text16W400(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.bodyLarge!.copyWith(color: color),
    );
  }
}

class Text14W700 extends StatelessWidget {
  const Text14W700(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.labelLarge!.copyWith(color: color),
    );
  }
}

class Text14W500 extends StatelessWidget {
  const Text14W500(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: context.textTheme.titleSmall!.copyWith(color: color),
    );
  }
}

class Text14W400 extends StatelessWidget {
  const Text14W400(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}

class Text12W500 extends StatelessWidget {
  const Text12W500(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.labelMedium!.copyWith(color: color),
    );
  }
}

class Text12W400 extends StatelessWidget {
  const Text12W400(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.bodySmall!.copyWith(color: color),
    );
  }
}

class Text11W500 extends StatelessWidget {
  const Text11W500(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: context.textTheme.labelSmall!.copyWith(color: color),
    );
  }
}
