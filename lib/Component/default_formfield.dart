import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  Widget? prefixIcon;
  // ignore: non_constant_identifier_names
  Widget? SuffixIcon;
  TextInputType? keyType;
  Color? cursor;
  String? title;
  bool? isPassword;
  double paddingHorizontal;
  double paddingVertical;
  DefaultFormField(
      {super.key,
      this.prefixIcon,
      // ignore: non_constant_identifier_names
      this.SuffixIcon,
      this.isPassword = false,
      required this.keyType,
      this.cursor = const Color(0xff3AB0FF),
      required this.title,
      this.paddingHorizontal = 0,
      this.paddingVertical = 0});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword!,
      keyboardType: keyType,
      cursorColor: cursor,
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        filled: true,
        contentPadding: EdgeInsets.symmetric(
            vertical: paddingVertical, horizontal: paddingHorizontal),
        hintText: title,
        prefixIcon: prefixIcon,
        suffixIcon: (SuffixIcon == null)
            ? null
            : IconTheme(
                data: const IconThemeData(
                  color: Color(0xff3AB0FF),
                ),
                child: SuffixIcon!),
        suffixIconColor: const Color(0xff3AB0FF),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff3AB0FF),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
