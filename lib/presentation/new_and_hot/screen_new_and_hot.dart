
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';
import 'package:netflix/presentation/widgets/everyones_watching_widget.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text("New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
          ),
            actions: [
              Icon(Icons.cast,color: Colors.white,size: 30,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: TabBar(
              labelColor: kBlackColor,
              unselectedLabelColor: kWhiteColor,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: kRadius30
              ),
              tabs: const [
                Tab(
                  text: "🍿Coming Soon",
                ),
                Tab(
                  text: "👀Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
    children: [
      _buildComingSoon(),
      _buildEveryonesWatching(),

      ],
    ),
      ),
    );
  }
  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (BuildContext context,index) => const ComingSoonWidget(),
    );

  }
  Widget _buildEveryonesWatching() {
    return  ListView.builder(
      itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
    const EveryonesWatchingWidget(),
    );
  }
}

