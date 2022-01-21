class Travel {
  String name, location, imgUrl;

  Travel({
    required this.name,
    required this.location,
    required this.imgUrl,
  });

  static List<Travel> genrateTravelBlog() {
    return [
      Travel(
          name: 'Name 1',
          location: 'Place 1',
          imgUrl: 'assets/images/top1.jpeg'),
      Travel(
          name: 'Name 2',
          location: 'Place 2',
          imgUrl: 'assets/images/top2.webp'),
      Travel(
          name: 'Name 3',
          location: 'Place 3',
          imgUrl: 'assets/images/top3.jpeg'),
      Travel(
          name: 'Name 4',
          location: 'Place 4',
          imgUrl: 'assets/images/top4.jpeg'),
      Travel(
          name: 'Name 5',
          location: 'Place 5',
          imgUrl: 'assets/images/top5.jpeg'),
      Travel(
          name: 'Name 6',
          location: 'Place 6',
          imgUrl: 'assets/images/top6.jpeg'),
    ];
  }


  static List<Travel> genrateMostPopular() {
    return [
      Travel(
          name: 'Name 7',
          location: 'Place 7',
          imgUrl: 'assets/images/bottom1.jpeg'),
      Travel(
          name: 'Name 8',
          location: 'Place 8',
          imgUrl: 'assets/images/bottom2.jpeg'),
      Travel(
          name: 'Name 9',
          location: 'Place 9',
          imgUrl: 'assets/images/bottom3.jpeg'),
      Travel(
          name: 'Name 10',
          location: 'Place 10',
          imgUrl: 'assets/images/bottom4.jpeg'),
      Travel(
          name: 'Name 11',
          location: 'Place 11',
          imgUrl: 'assets/images/bottom5.jpeg'),
      Travel(
          name: 'Name 12',
          location: 'Place 12',
          imgUrl: 'assets/images/bottom6.webp'),
    ];
  }
}
