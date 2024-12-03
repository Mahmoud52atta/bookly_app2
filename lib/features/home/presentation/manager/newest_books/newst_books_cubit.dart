import 'package:bloc/bloc.dart';
import 'package:bookly_app2/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRebo) : super(NewstBooksInitial());
  final HomeRepo homeRebo;
  Future<void> fetchNewestBooks() async {
    emit(NewstBooksLoadin());
    var result = await homeRebo.fetchNewestBooks();
    result.fold((failuer) {
      emit(
        NewstBooksFailuer(failuer.errorMessage),
      );
    }, (books) {
      emit(NewstBooksSuccess(books));
    });
  }
}
