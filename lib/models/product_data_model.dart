class Product {
  final String name;
  final String description;
  final String imageAsset;
  final double price;
  final double discountedPrice;

  Product({
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.price,
    required this.discountedPrice,
  });
}

// Sample product list
List<Product> products = [
  Product(
    name: "Bundle Pack",
    description: "Onion, Oil, Salt...",
    imageAsset: "assets/images/1.png",
    price: 35,
    discountedPrice: 50.32,
  ),
  Product(
    name: "Bundle Pack 2",
    description: "Tomatoes, Pasta...",
    imageAsset: "assets/images/2.png",
    price: 25,
    discountedPrice: 35.50,
  ),
  Product(
    name: "Combo Deal",
    description: "Rice, Chicken...",
    imageAsset: "assets/images/3.png",
    price: 50,
    discountedPrice: 70.80,
  ),
  Product(
    name: "Healthy Snacks",
    description: "Nuts, Dried Fruits...",
    imageAsset: "assets/images/4.png",
    price: 15,
    discountedPrice: 20.25,
  ),
  Product(
    name: "Family Pack",
    description: "Potatoes, Eggs...",
    imageAsset: "assets/images/5.png",
    price: 40,
    discountedPrice: 55.90,
  ),
  Product(
    name: "Summer Refresh",
    description: "Watermelon, Lemon...",
    imageAsset: "assets/images/6.png",
    price: 18,
    discountedPrice: 24.50,
  ),
  Product(
    name: "Protein Boost",
    description: "Milk, Yogurt...",
    imageAsset: "assets/images/7.png",
    price: 30,
    discountedPrice: 45.70,
  ),
  Product(
    name: "Sweet Treats",
    description: "Chocolates, Cookies...",
    imageAsset: "assets/images/8.png",
    price: 12,
    discountedPrice: 15.80,
  ),
  Product(
    name: "Backyard BBQ",
    description: "Burger Patties, Buns...",
    imageAsset: "assets/images/9.png",
    price: 28,
    discountedPrice: 35.40,
  ),
  Product(
    name: "Veggie Delight",
    description: "Carrots, Broccoli...",
    imageAsset: "assets/images/10.png",
    price: 22,
    discountedPrice: 30.20,
  ),
  Product(
    name: "Summer Sippers",
    description: "Soda, Iced Tea...",
    imageAsset: "assets/images/11.png",
    price: 10,
    discountedPrice: 12.60,
  ),
  Product(
    name: "Breakfast Bonanza",
    description: "Cereal, Milk...",
    imageAsset: "assets/images/12.png",
    price: 19,
    discountedPrice: 25.90,
  ),
  Product(
    name: "Snack Attack",
    description: "Chips, Popcorn...",
    imageAsset: "assets/images/Fruit.png",
    price: 16,
    discountedPrice: 20.40,
  ),
  Product(
    name: "Fresh Start",
    description: "Apples, Bananas...",
    imageAsset: "assets/images/2.png",
    price: 14,
    discountedPrice: 18.75,
  ),
  Product(
    name: "Morning Boost",
    description: "Coffee, Donuts...",
    imageAsset: "assets/images/15.png",
    price: 8,
    discountedPrice: 10.20,
  ),
];
