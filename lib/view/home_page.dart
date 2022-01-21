import 'package:flutter/material.dart';
import 'package:travel_app/constants/color.dart';
import 'package:travel_app/widget/most_popular.dart';
import 'package:travel_app/widget/travel_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Travel Blog',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          
          Expanded(
            flex: 2,
              child: TravelBlog()),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'View More',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

          ),
          Expanded(
              flex: 1,
              child: MostPopular()),
        ],
      ),
    );
  }
}
