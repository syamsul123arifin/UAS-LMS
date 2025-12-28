class Course {
  final String id;
  final String title;
  final String category;
  final double rating;
  final int totalHours;
  final double price;
  final String imageUrl;

  Course({
    required this.id,
    required this.title,
    required this.category,
    required this.rating,
    required this.totalHours,
    required this.price,
    required this.imageUrl,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      rating: json['rating'].toDouble(),
      totalHours: json['totalHours'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'rating': rating,
      'totalHours': totalHours,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}