import 'package:bloc/bloc.dart';
import 'package:bookly_app2/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  final HomeRepo homeRepo;
  FeatuerBooksCubit(this.homeRepo) : super(FeatuerBooksInitial());
  Future<void> fetchFeatuerBooks() async {
    emit(FeatuerBooksLoading());
    var result = await homeRepo.fetchFeatuerBooks();

    result.fold((failuer) {
      emit(FeatuerBooksFeiluer(failuer.errorMessage));
    }, (books) {
      emit(FeatuerBooksSuccess(books));
    });
  }
}
