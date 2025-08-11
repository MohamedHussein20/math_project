main() {
  Product product1 = Product("Laptop", 1500);
  print(product1.description);
  
  product1.name = "Gaming Laptop";
  product1.price = 1800;
  
  print(product1.description);
// Invalid price
}

class Product {
  String _name;
  double _price;
  Product(this._name, this._price);

  void set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    } else {
      print("Product name cannot be empty");
    }
  }

  void set price(double price) {
    if (price > 0) {
      _price = price;
    } else {
      print("Price cannot be less than or equal 0");
    }
  }

  String get description => "Product name: $_name, Price: $_price";
}
