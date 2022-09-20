import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  String title;
  Color buttoncolor;
  Color textcolor;
  double circularRadius;
  double height;
  double width;
  FontWeight fontweight;
  VoidCallback ontap;

  DefaultButton({
    super.key,
    required this.title,
    required this.ontap,
    this.buttoncolor = const Color(
      0xff3AB0FF,
    ),
    this.textcolor = Colors.white,
    this.circularRadius = 10.0,
    this.width = double.infinity,
    this.height = 52,
    this.fontweight = FontWeight.bold,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              circularRadius,
            ),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.aclonica(
            textStyle: TextStyle(
              fontWeight: fontweight,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
