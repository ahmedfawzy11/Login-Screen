import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultOutlineButton extends StatelessWidget {
  double? height;
  Function ontap;
  Widget child;
  DefaultOutlineButton({
    super.key,
    this.height = 50,
    required this.ontap,
    required this.child,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: height,
      child: OutlinedButton(
        onPressed: () {
          ontap;
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(
            0xff3AB0FF,
          ),
          side: const BorderSide(
            color: Color(
              0xff3AB0FF,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
