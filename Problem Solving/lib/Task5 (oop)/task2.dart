main() {
  Book book1 = Book("");
  print(book1.title);
  Book book2 = Book("New Book");
  print(book2.title);
}

class Book {
  String _title = "";
  Book(this._title);
  void set title(String title) {
    if (title.isNotEmpty) {
      _title = title;
    } else {
      print("Title cannot be empty");
    }
  }

  String get title => _title;
}
