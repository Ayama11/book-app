// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/data/reop/home_repo.dart';
import 'package:bookapp/core/errors/failure.dart';
import 'package:bookapp/core/utils/api_services.dart';

class HomeRepoImpl implements HomeRepo {
  final Api api;
  HomeRepoImpl({required this.api});
  @override
  Future<Either<Failure, List<Book>>> fetchNewsBooks() async {
    try {
      var data = await api.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServiecesFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
