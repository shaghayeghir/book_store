class BookModel {
  int id;
  String imageUrl;
  String title;
  double read;
  double rating;
  double price;
  String info;


  BookModel(
      {
        required this.id,
        required this.imageUrl,
        required this.title,
        required this.read,
        required this.rating,
        required this.price,
        required this.info,
      });
}