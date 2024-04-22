// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/data/reop/home_repo.dart';
import 'package:bookapp/core/errors/failure.dart';
import 'package:bookapp/core/utils/api_services.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final Api api;
  HomeRepoImpl(this.api);
  @override
  Future<Either<Failure, List<Book>>> fetchBooks() async {
    try {
      var data = await api.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:flutter'
          //  'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest'
          );
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiecesFailure.fromDioError(e));
      }
      return left(ServiecesFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await api.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest'

          // 'volumes?Filtering=free-ebooks&q=subject:flutter'

          );
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiecesFailure.fromDioError(e));
      }
      return left(ServiecesFailure(e.toString()));
    }
  }
}
