import 'class.dart';

void main() {
//  user
  User user = User("rokya@gmail.com", "123456", "Rokya", 01120203040);

//  restaurants and menu
  List restaurants = [
    Restaurant("CFC", "Mansoura", "Description", [
      Food("Burger", 80),
      Food("Chicken Burger", 90),
      Food("Pizza", 100),
    ]),
    Restaurant("CFC", "Mansoura", "Description", [
      Food("Burger", 80),
      Food("Chicken Burger", 90),
      Food("Pizza", 100),
    ]),
  ];

// select restaurant and order food
  Restaurant selected = restaurants[0];
  List<Food> selectedFoods = [selected.menu[1], selected.menu[0]];

  Order order = Order(1, "mansoura", user, selected, selectedFoods, 100);
  print(order.Price());
}
