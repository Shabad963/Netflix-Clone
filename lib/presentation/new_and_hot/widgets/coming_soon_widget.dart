import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';


class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "FEB",style: TextStyle(
                fontSize: 16,
                color: kGreyColor,
              ),),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 310,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("The Adam Project",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.all_out_sharp,
                        title: "Remind me",
                        iconSize: 18,
                        textSize: 10,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "info",
                        iconSize: 18,
                        textSize: 10,
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              kHeight,
              const Text("Coming on Friday"),
              kHeight,
              const Text("The Adam Project",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              const Text("After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.",
                style: TextStyle(
                    color: kGreyColor
                ),),
            ],
          ),
        ),
      ],
    );
  }
}

