import 'package:equatable/equatable.dart';

class Query extends Equatable {
  final String? key;
  final String? value;

  const Query({this.key, this.value});

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        key: json['key'] as String?,
        value: json['value'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
      };

  @override
  List<Object?> get props => [key, value];
}
