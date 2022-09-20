// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.title,
  }) : super(
          key: key,
        );

  final String title;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Text(
          title,
        ),
      ),
    );
  }
}
