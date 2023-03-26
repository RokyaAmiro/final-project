class User {
  String email;
  String password;
  String name;
  int phoneNumber;

  User(this.email, this.password, this.name, this.phoneNumber);

  void login() {}

  void register() {}
}

class Restaurant {
  String name;
  String location;
  String description;
  List<Food> menu;

  Restaurant(this.name, this.location, this.description, this.menu);

  static List<Restaurant> getRestaurants() {
    // return list of restaurants
    return [];
  }
}

class Food {
  String name;
  double price;

  Food(this.name, this.price);
}

class Order {
  int id;
  String address;
  User user;
  Restaurant restaurant;
  List<Food> items;
  double price;

  Order(this.id, this.address, this.user, this.restaurant, this.items,
      this.price);

  double Price() {
    double totalPrice = 0.0;

    for (Food food in items) {
      totalPrice += food.price;
    }

    return totalPrice;
  }
}
