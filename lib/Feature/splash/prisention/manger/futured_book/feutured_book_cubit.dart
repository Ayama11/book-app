import 'package:bloc/bloc.dart';
import 'package:bookapp/Feature/home/data/models/book/book.dart';
import 'package:equatable/equatable.dart';

part 'feutured_book_state.dart';

class FeuturedBookCubit extends Cubit<FeuturedBookState> {
  FeuturedBookCubit() : super(FeuturedBookInitial());
}
