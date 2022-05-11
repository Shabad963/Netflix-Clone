import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          image: NetworkImage(
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nZNd2kJMNg2qz89pQ0gVvPP064z.jpg",
          ),
        ),
      ),
    );
  }
}
