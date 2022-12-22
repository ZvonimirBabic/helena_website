import 'package:flutter/material.dart';
import 'package:helena_website/ui/home/home_widgets/homepage_image_widget.dart';

import '../../../constants/assets.dart';
import '../../../constants/text_styles.dart';
import 'overflow_bar_button.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1900,
      color: Colors.white,
      constraints: const BoxConstraints(maxWidth: 1440),
      alignment: Alignment.topCenter,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: [
                              FadeInImage(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                                placeholder:
                                    MemoryImage(ImageAssets.kTransparentImage),
                                image: const AssetImage(
                                  ImageAssets.landscape,
                                ),
                              ),
                              Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: FadeInImage(
                                            height: 128,
                                            image: const AssetImage(
                                                ImageAssets.shrek),
                                            placeholder: MemoryImage(
                                                ImageAssets.kTransparentImage),
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 64),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'FEATURED',
                                      style: CustomTextStyles.title,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Unique wildlife tour & destinations',
                                      style: CustomTextStyles.body,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  HomePageImageWidget(
                                      imageAsset: ImageAssets.fresh,
                                      imageText: 'Hedgehog',
                                      fit: BoxFit.cover,
                                      alignment: Alignment.bottomCenter),
                                  HomePageImageWidget(
                                      imageAsset: ImageAssets.chicken,
                                      imageText: 'Chicken',
                                      fit: BoxFit.cover,
                                      alignment: Alignment.bottomCenter),
                                  HomePageImageWidget(
                                      imageAsset: ImageAssets.hippo,
                                      imageText: 'Hippopotamus',
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.topCenter),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: null,
                      right: null,
                      top: 250,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 16,
                        child: Container(
                          width: 700,
                          height: 100,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              OverflowBarButton(
                                text: 'Destination',
                              ),
                              VerticalDivider(
                                thickness: 3,
                                endIndent: 16,
                                indent: 16,
                              ),
                              OverflowBarButton(
                                text: 'Dates',
                              ),
                              VerticalDivider(
                                thickness: 3,
                                endIndent: 16,
                                indent: 16,
                              ),
                              OverflowBarButton(
                                text: 'People',
                              ),
                              VerticalDivider(
                                thickness: 3,
                                endIndent: 16,
                                indent: 16,
                              ),
                              OverflowBarButton(
                                text: 'Experiences',
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  color: Colors.black26,
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'COPYRIGHT: BLA BLA SOME TEXT OR SOMETHING ELSE',
                      style: CustomTextStyles.small,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
