import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}
