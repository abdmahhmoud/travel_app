import 'package:flutter/material.dart';
import 'package:travel_app/model/travel.dart';
import 'package:travel_app/view/detail_page.dart';

class MostPopular extends StatelessWidget {
  MostPopular({Key? key}) : super(key: key);
  final list = Travel.genrateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var listMostPopular = list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  travel: listMostPopular,
                ),
              ),
            );
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    listMostPopular.imgUrl,
                    fit: BoxFit.cover,
                    width: 140,
                    height: 300,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      child: Text(
                        listMostPopular.name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            backgroundColor: Colors.black87),
                      ),
                    ),
                    Material(
                      child: Text(
                        listMostPopular.location,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            backgroundColor: Colors.black87),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (_, index) => const SizedBox(
        width: 15,
      ),
      itemCount: list.length,
    );
  }
}
