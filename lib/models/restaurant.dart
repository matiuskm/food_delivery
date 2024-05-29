import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: 'Black Montana Burger',
      description: 'Black Montana Burger',
      price: 42000,
      image: 'lib/images/burgers/black_montana.webp',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheesse', price: 7000),
        Addon(name: 'Extra black pepper sauce (20gr)', price: 4000),
      ],
    ),
    Food(
      name: 'Maya Black Pepper Burger',
      description: 'Fried Chicken Blackpepper Burger',
      price: 50000,
      image: 'lib/images/burgers/maya_black_pepper.webp',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheesse', price: 7000),
        Addon(name: 'Extra egg', price: 6000),
        Addon(name: 'Extra black pepper sauce (20gr)', price: 4000),
      ],
    ),
    Food(
      name: 'Black Montana Burger with Egg',
      description: 'Black Montana Burger with Egg',
      price: 45000,
      image: 'lib/images/burgers/black_montana_with_egg.webp',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheesse', price: 7000),
        Addon(name: 'Extra black pepper sauce (20gr)', price: 4000),
      ],
    ),
    Food(
      name: 'OG Bronx Burger',
      description: 'Original Burger with Egg',
      price: 32000,
      image: 'lib/images/burgers/og_bronx.webp',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheesse', price: 7000),
      ],
    ),
    Food(
      name: 'Double Black Montana Burger',
      description: 'Double Blackpepper Burger',
      price: 65000,
      image: 'lib/images/burgers/double_black_montana.webp',
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheesse', price: 7000),
        Addon(name: 'Extra egg', price: 6000),
        Addon(name: 'Extra black pepper sauce (20gr)', price: 4000),
      ],
    ),
    // salads
    Food(
      name: 'Salad - Egg Mayo',
      description:
          'Berbagai macam sayuran segar yang dipadukan dengan daging pilihan dan sauce yang dapat disesuaikan dengan selera.',
      price: 52500,
      image: 'lib/images/salads/egg_mayo.webp',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra pepperoni', price: 10000),
        Addon(name: 'Extra tuna mayo', price: 7000),
        Addon(name: 'Extra meat steak', price: 16000),
      ],
    ),
    Food(
      name: 'Salad - Chicken Slice',
      description:
          'Berbagai macam sayuran segar yang dipadukan dengan daging pilihan dan sauce yang dapat disesuaikan dengan selera.',
      price: 55500,
      image: 'lib/images/salads/chicken_slice.webp',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra pepperoni', price: 10000),
        Addon(name: 'Extra tuna mayo', price: 7000),
        Addon(name: 'Extra meat steak', price: 16000),
      ],
    ),
    Food(
      name: 'Salad - Roasted Chicken',
      description:
          'Berbagai macam sayuran segar yang dipadukan dengan daging pilihan dan sauce yang dapat disesuaikan dengan selera.',
      price: 52500,
      image: 'lib/images/salads/roasted_chicken.webp',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra pepperoni', price: 10000),
        Addon(name: 'Extra tuna mayo', price: 7000),
        Addon(name: 'Extra meat steak', price: 16000),
      ],
    ),
    Food(
      name: 'Salad - BBQ Chicken',
      description:
          'Berbagai macam sayuran segar yang dipadukan dengan daging pilihan dan sauce yang dapat disesuaikan dengan selera.',
      price: 52500,
      image: 'lib/images/salads/bbq_chicken.webp',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra pepperoni', price: 10000),
        Addon(name: 'Extra tuna mayo', price: 7000),
        Addon(name: 'Extra meat steak', price: 16000),
      ],
    ),
    Food(
      name: 'Salad - Chicken Teriyaki',
      description:
          'Berbagai macam sayuran segar yang dipadukan dengan daging pilihan dan sauce yang dapat disesuaikan dengan selera.',
      price: 52500,
      image: 'lib/images/salads/chicken_teriyaki.webp',
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra pepperoni', price: 10000),
        Addon(name: 'Extra tuna mayo', price: 7000),
        Addon(name: 'Extra meat steak', price: 16000),
      ],
    ),
    // sides
    Food(
      name: 'Choco Chips Cookie',
      description: 'Choco Chips - 1 Piece',
      price: 21500,
      image: 'lib/images/sides/choco_chips_cookie.webp',
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: 'Double Choco Cookie',
      description: 'Double Choco - 1 Piece',
      price: 21500,
      image: 'lib/images/sides/double_choco_cookie.webp',
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: 'White Choc Macadamia Cookie',
      description: 'White Choc Macadamia Cookie - 1 Piece',
      price: 21500,
      image: 'lib/images/sides/white_choc_macadamia.webp',
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: 'Oatmeal Raisin Cookie',
      description: 'Oatmeal Raisin Cookie - 1 Piece',
      price: 21500,
      image: 'lib/images/sides/oatmeal_raisin_cookie.webp',
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: 'Chicken Cream Soup',
      description: 'Chiken Cream Soup',
      price: 16500,
      image: 'lib/images/sides/chicken_cream_soup.webp',
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    // desserts
    Food(
      name: 'Banoffee Pie Medium',
      description:
          'Banana with caramel sauce, marie biscuit crumbs, topped with whipped cream and cocoa dust, 8 x 9 x 4 cm, 175 gram',
      price: 43900,
      image: 'lib/images/desserts/banoffee.webp',
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Mixed vegetables', price: 5000),
        Addon(name: 'Birthday cake', price: 5000),
      ],
    ),
    Food(
      name: 'Tiramisu Dessert Medium',
      description:
          'Mascarpone cheese with cream and biscuits with espresso, topped with cocoa dust, 8 x 9 x 4 cm, 135 gram',
      price: 48400,
      image: 'lib/images/desserts/tiramisu.webp',
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Mixed vegetables', price: 5000),
        Addon(name: 'Birthday cake', price: 5000),
      ],
    ),
    Food(
      name: 'Matcha Cheesecake Medium',
      description:
          'No Bake Cheesecake With Matcha Glaze And Roasted Almond, 9 X 9 X 5 Cm, 195 Gram',
      price: 49500,
      image: 'lib/images/desserts/matcha.webp',
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Mixed vegetables', price: 5000),
        Addon(name: 'Birthday cake', price: 5000),
      ],
    ),
    Food(
      name: 'Strawberry Cheesecake Medium',
      description:
          'No Bake Cheesecake With Strawberry Sauce, 9 X 9 X 5 Cm, 195 Gram',
      price: 49500,
      image: 'lib/images/desserts/strawberry.webp',
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Mixed vegetables', price: 5000),
        Addon(name: 'Birthday cake', price: 5000),
      ],
    ),
    Food(
      name: 'Blueberry Cheesecake Medium',
      description:
          'No Bake Cheesecake With Blueberry Sauce, 9 X 9 X 5 Cm, 195 Gram',
      price: 49500,
      image: 'lib/images/desserts/blueberry.webp',
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Mixed vegetables', price: 5000),
        Addon(name: 'Birthday cake', price: 5000),
      ],
    ),
    // drinks
    Food(
      name: 'Coca Cola 390ml',
      description: 'Coca Cola 390ml',
      price: 10000,
      image: 'lib/images/drinks/cocacola.webp',
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: 'Teh Puck 350ml',
      description: 'Teh Puck 350ml',
      price: 6500,
      image: 'lib/images/drinks/pucuk.webp',
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: 'Honey Nipis 330ml',
      description: 'Honey Nipis 330ml',
      price: 7500,
      image: 'lib/images/drinks/nipis.webp',
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: 'Le Minerale 330ml',
      description: 'Le Minerale 330ml',
      price: 4500,
      image: 'lib/images/drinks/leminerale.webp',
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address(which user can change/update)
  String _deliveryAddress = 'Beverly Hills 90210';

  /*
   * GETTERS
   */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
   * OPERATIONS
   */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // check if food is already in cart
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if yes, increment quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // if no, add to cart
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price
  int getTotalPrice() {
    int totalPrice = 0;

    for (CartItem cartItem in _cart) {
      int itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      totalPrice += itemTotal * cartItem.quantity;
    }

    return totalPrice;
  }

  // get total items
  int getTotalItems() {
    int totalItems = 0;

    for (CartItem cartItem in _cart) {
      totalItems += cartItem.quantity;
    }

    return totalItems;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }

  /*
   * HELPERS
   */

  // generate a receipt
  String displayReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Receipt');
    receipt.writeln();

    // format the date to include up to seconds only
    final formattedDate =
        DateFormat('yyyy-MM-dd – HH:mm:ss').format(DateTime.now());

    receipt.writeln('Date: $formattedDate');
    receipt.writeln();
    receipt.writeln('-------------------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity}x ${cartItem.food.name} - ${formatCurrency(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln('  Addons: ${formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }

    receipt.writeln('-------------------------');
    receipt.writeln();
    receipt.writeln('Total Items: ${getTotalItems()}');
    receipt.writeln('Total Price: ${formatCurrency(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivery Address: $_deliveryAddress');

    return receipt.toString();
  }

  // format number to currency
  String formatCurrency(int number) {
    return NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0)
        .format(number);
  }

  // format list of addons into string summary
  String formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${formatCurrency(addon.price)})")
        .join(', ');
  }
}
