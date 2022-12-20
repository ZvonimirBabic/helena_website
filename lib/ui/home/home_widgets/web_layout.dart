import 'package:flutter/material.dart';
import 'package:helena_website/constants/text_styles.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxWidth: 1440),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 300,
                  child: Stack(
                    children: const [],
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              'FEATURED',
                              style: CustomTextStyles.title,
                            ),
                          ),
                          const Flexible(
                              child:
                                  Text('Unique wildlife tour & destinations'))
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.green,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: null,
              right: null,
              top: 250,
              child: Container(
                width: 400,
                height: 100,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
