import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/heigh_light.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 15,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 4,
                    text: "+",
                  ),
                  label: "Published Apps",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: "+",
                  ),
                  label: "Planned Projects",
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 15,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 4,
                    text: "+",
                  ),
                  label: "Published Apps",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    text: "+",
                  ),
                  label: "Planned Projects",
                ),
              ],
            ),
    );
  }
}
