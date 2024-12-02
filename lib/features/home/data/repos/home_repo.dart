import 'package:bookly_app2/core/util/errors/fealuer.dart';
import 'package:bookly_app2/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fealuer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Fealuer, List<BookModel>>> fetchFeatuerBooks();
}
