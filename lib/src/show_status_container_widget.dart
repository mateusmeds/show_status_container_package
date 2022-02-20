import 'package:flutter/material.dart';

class ShowStatusConainer extends StatelessWidget {
  final String statusText;
  final double? textFontSize;
  final Color? colorText;
  final Color? colorContainer;

  const ShowStatusConainer({
    required this.statusText,
    this.textFontSize,
    this.colorText,
    this.colorContainer,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: colorContainer ?? Colors.blue),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Text(
          statusText,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: colorText ?? Colors.blue,
            fontSize: textFontSize ?? 15,
          ),
        ),
      ),
    );
  }
}
