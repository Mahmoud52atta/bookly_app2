import 'package:equatable/equatable.dart';

import 'collection.dart';

class BookModel extends Equatable {
  final Collection? collection;

  const BookModel({this.collection});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        collection: json['collection'] == null
            ? null
            : Collection.fromJson(json['collection'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'collection': collection?.toJson(),
      };

  @override
  List<Object?> get props => [collection];
}
