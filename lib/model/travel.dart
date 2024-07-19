class Travel{
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;


  Travel(this.name, this.duration, this.description, this.location, this.rating, this.distance, this.imageUrl, this.cost);


  static List<Travel> getTravelItems(){
    final List<Travel> _travelList = [
      Travel('Lalbagh Garden', 4, 'Lalbagh Botanical Garden is a verdant oasis in Bangalore, India, showcasing diverse flora amidst serene landscapes.', 'Mavalli', 4.6, 3, ['assets/images/img1.jpg', 'assets/images/thumbnail1.png'], 230.0),
      Travel('Cubbon Park', 5, 'Cubbon Park, nestled in the heart of Bangalore, is a sprawling urban green space offering tranquility and recreational activities amidst a lush natural setting.', 'Kasturba Rd', 4.3, 6, ['assets/images/img2.jpg', 'assets/images/thumbnail2.png'], 432.0),
      Travel('ISKCON Temple', 3, 'The ISKCON Temple in Bangalore is a magnificent spiritual landmark, showcasing stunning architecture and fostering devotion and peace.', 'Kanakapura Rd', 4.5, 8, ['assets/images/img3.jpg', 'assets/images/thumbnail3.png'], 283.0),
      Travel('Bengaluru Palace', 3, 'Bengaluru Palace is a regal architectural masterpiece in Bangalore, echoing the grandeur of a bygone era and offering a glimpse into the citys royal history.', 'Bengaluru, Karnataka', 4.2, 16, ['assets/images/img4.jpg', 'assets/images/thumbnail4.png'], 389.0),
      Travel('Vidhana Soudha', 2, 'Vidhana Soudha is an iconic government building in Bangalore, India, epitomizing the states governance and architectural elegance.', 'Ambedkar Bheedhi', 4.8, 21, ['assets/images/img5.jpg', 'assets/images/thumbnail5.png'], 534.0),

    ];
    return _travelList;
  }


  static List<Travel> getNearestItems(){
    List<Travel> _travelList = Travel.getTravelItems();
    return _travelList.where((element) => element.distance < 10).toList();
  }

}