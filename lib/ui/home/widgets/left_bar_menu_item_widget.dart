import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftBarMenuItemWidget extends StatelessWidget {
  final bool isSelected;
  final String svgChildPath;
  final int? size;
  final MaterialColor? color;
  final Function()? onTouch;

  const LeftBarMenuItemWidget(
      {Key? key,
      required this.svgChildPath,
      this.isSelected = false,
      this.size,
      this.color,
      this.onTouch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(8);

    return Container(
      margin: EdgeInsets.all(8),
      child: Material(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: () {
            if (onTouch != null) {
              onTouch!();
            }
          },
          child: Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(4),
            height: size?.toDouble() ?? 32,
            width: size?.toDouble() ?? 32,
            child: SvgPicture.asset(
              svgChildPath,
              color: color ?? (isSelected ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
