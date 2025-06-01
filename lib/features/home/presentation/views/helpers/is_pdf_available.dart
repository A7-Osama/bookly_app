import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

bool isPdfAvailable(BookModel book) {
  final pdf = book.accessInfo?.pdf;
  final link = pdf?.acsTokenLink;
  return pdf?.isAvailable == true && link != null && link.isNotEmpty;
}