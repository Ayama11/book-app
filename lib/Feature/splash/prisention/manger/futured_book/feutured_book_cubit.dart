import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feutured_book_state.dart';

class FeuturedBookCubit extends Cubit<FeuturedBookState> {
  FeuturedBookCubit() : super(FeuturedBookInitial());
}
