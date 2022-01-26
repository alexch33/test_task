
import 'package:flutter/material.dart';

class CustomDividerLeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 16,
      alignment: Alignment.center,
      child: Divider(
        thickness: 2,
      ),
    );
  }
}