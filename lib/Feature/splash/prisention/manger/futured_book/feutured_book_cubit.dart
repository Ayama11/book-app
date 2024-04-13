// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/data/reop/home_repo.dart';

part 'feutured_book_state.dart';

class FeuturedBookCubit extends Cubit<FeuturedBookState> {
  FeuturedBookCubit(this.homeRepo) : super(FeuturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeuturedBookFailure(failure.errMessage));
    }, (book) {
      emit(FeuturedBookSuccess(book));
    });
  }
}
