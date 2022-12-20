import 'package:flutter/material.dart';

import '../../../constants/text_styles.dart';

class OverflowBarButton extends StatefulWidget {
  const OverflowBarButton({required this.text, Key? key}) : super(key: key);
  final String text;
  @override
  State<OverflowBarButton> createState() => _OverflowBarButtonState();
}

class _OverflowBarButtonState extends State<OverflowBarButton> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          hovered = false;
        });
      },
      child: Text(
        widget.text,
        style:
            hovered ? CustomTextStyles.smallSelected : CustomTextStyles.small,
      ),
    );
  }
}
