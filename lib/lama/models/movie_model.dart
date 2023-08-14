class MovieModel {
  int _releasedYear;
  int _id;
  double _rating;
  String _title;
  String _desc;
  String _backdrop;
  String _imageUrl;

  MovieModel(
      this._releasedYear, this._id, this._rating, this._title, this._desc, this._backdrop, this._imageUrl);

  int get releasedYear => _releasedYear;
  set releasedYear(int value) {
    _releasedYear = value;
  }

  double get rating => _rating;
  set rating(double value) {
    _rating = value;
  }

  String get title => _title;
  set title(String value) {
    _title = value;
  }

  String get desc => _desc;
  set desc(String value) {
    _desc = value;
  }

  String get backdrop => _backdrop;
  set backdrop(String value) {
    _backdrop = value;
  }

  String get imageUrl => _imageUrl;
  set imageUrl(String value) {
    _imageUrl = value;
  }
}
