import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../constants/text_styles.dart';

class HomePageImageWidget extends StatefulWidget {
  const HomePageImageWidget(
      {required this.imageAsset,
      required this.imageText,
      required this.fit,
      required this.alignment,
      Key? key})
      : super(key: key);

  final String imageAsset;
  final String imageText;
  final BoxFit fit;
  final Alignment alignment;

  @override
  State<HomePageImageWidget> createState() => _HomePageImageWidgetState();
}

class _HomePageImageWidgetState extends State<HomePageImageWidget>
    with SingleTickerProviderStateMixin {
  double scale = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          MouseRegion(
            onEnter: (PointerEnterEvent pointerEnterEvent) {
              setState(() {
                scale = 1.1;
              });
            },
            onExit: (PointerExitEvent pointerExitEvent) {
              setState(() {
                scale = 1;
              });
            },
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                child: AnimatedScale(
                  scale: scale,
                  duration: const Duration(milliseconds: 300),
                  child: FadeInImage(
                    image: AssetImage(widget.imageAsset),
                    fit: widget.fit,
                    alignment: widget.alignment,
                    placeholder: MemoryImage(ImageAssets.kTransparentImage),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.imageText,
            style: CustomTextStyles.bodyBold,
          )
        ],
      ),
    );
  }
}
