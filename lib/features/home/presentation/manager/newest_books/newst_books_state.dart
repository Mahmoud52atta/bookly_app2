part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksLoadin extends NewstBooksState {}

final class NewstBooksFailuer extends NewstBooksState {
  final String errorMessage;

  const NewstBooksFailuer(this.errorMessage);
}

final class NewstBooksSuccess extends NewstBooksState {
  final List<BookModel> books;

  const NewstBooksSuccess(this.books);
}
