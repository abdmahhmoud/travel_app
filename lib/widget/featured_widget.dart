import 'package:flutter/material.dart';
import 'package:travel_app/model/travel.dart';

class FeaturedWidget extends StatelessWidget {
  final _list = Travel.genrateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return SizedBox(
            width: 120,
            height: 140,
            child: Image.asset(
              travel.imgUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
              width: 10,
            ),
        itemCount: _list.length);
  }
}
