main(){
  Movie movie1 = Movie("Inception", 8.8);
  print(movie1.description);
  
  movie1.title = "Interstellar";
  movie1.rating = 8.6;
  
  print(movie1.description);
}

class Movie {
  String _title;
  double _rating;
  Movie(this._title, this._rating);

  void set title(String title) {
    if (title.isNotEmpty) {
      _title = title;
    } else {
      print("Title name cannot be empty");
    }
  }

  void set rating(double rating) {
    if (rating >= 0 && rating <= 10) {
      _rating = rating;
    } else {
      print("Rating cannot be less than 0 or more than 10");
    }
  }

  String get description => "Movie name: $_title, Has rating: $_rating";
}