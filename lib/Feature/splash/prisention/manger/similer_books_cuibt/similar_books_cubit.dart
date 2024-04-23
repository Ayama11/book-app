import 'package:bloc/bloc.dart';
import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:bookapp/Feature/home/data/reop/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchSimilarBooks({required String category}) async {
    var result = await homeRepo.fetchSimilartBooks();
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (book) {
      emit(SimilarBooksSuccess(book));
    });
  }
}
