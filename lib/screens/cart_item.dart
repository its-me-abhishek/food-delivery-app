class CartItem {
  final String title;
  final String imageUrl;
  int quantity;
  double price; 
  CartItem({
    required this.title,
    required this.imageUrl,
    required this.quantity,
    required this.price,
  });
}

List<CartItem> cartItems = [];
