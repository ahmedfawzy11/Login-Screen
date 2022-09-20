import 'package:algoriza_task/Components/defaultFont.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultDivider extends StatelessWidget {
  String? title;
  DefaultDivider({
    super.key,
    required this.title,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              right: 20.0,
            ),
            child: const Divider(
              color: Colors.grey,
              height: 36,
            ),
          ),
        ),
        DefaultTextFont(
          title: title!,
          size: 12,
          titlecolor: Colors.grey,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              left: 20.0,
            ),
            child: const Divider(
              color: Colors.grey,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}
