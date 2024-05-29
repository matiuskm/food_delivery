// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  final String name;
  final String description;
  final int price;
  final String image;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  final String name;
  final int price;

  Addon({
    required this.name,
    required this.price,
  });
}
