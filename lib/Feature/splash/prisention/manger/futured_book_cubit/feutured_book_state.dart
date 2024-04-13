part of 'feutured_book_cubit.dart';

sealed class FeuturedBookState extends Equatable {
  const FeuturedBookState();

  @override
  List<Object> get props => [];
}

final class FeuturedBookInitial extends FeuturedBookState {}

final class FeuturedBookLoading extends FeuturedBookState {}

final class FeuturedBookSuccess extends FeuturedBookState {
  final List<Book> books;

  const FeuturedBookSuccess(this.books);
}

final class FeuturedBookFailure extends FeuturedBookState {
  final String errMesage;

  const FeuturedBookFailure(this.errMesage);
}
