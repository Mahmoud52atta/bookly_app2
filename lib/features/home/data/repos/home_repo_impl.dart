import 'package:bookly_app2/core/util/errors/fealuer.dart';
import 'package:bookly_app2/core/util/sevices/api_service.dart';
import 'package:bookly_app2/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app2/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Fealuer, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServesFailuer.fromDioError(e));
      }
      return left(ServesFailuer(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Fealuer, List<BookModel>>> fetchFeatuerBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServesFailuer.fromDioError(e));
      }
      return left(ServesFailuer(errorMessage: e.toString()));
    }
  }
}
