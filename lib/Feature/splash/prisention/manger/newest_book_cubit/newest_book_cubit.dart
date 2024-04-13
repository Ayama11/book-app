import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book/book.dart';
import '../../../../home/data/reop/home_repo.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBookFailure(failure.errMessage));
    }, (book) {
      emit(NewestBookSuccess(book));
    });
  }
}
