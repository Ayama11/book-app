part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  final List<Book> books;

  const NewestBookSuccess(this.books);
}

final class NewestBookFailure extends NewestBookState {
  final String errMesage;

  const NewestBookFailure(this.errMesage);
}
