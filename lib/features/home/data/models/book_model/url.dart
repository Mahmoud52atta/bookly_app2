import 'package:equatable/equatable.dart';

import 'query.dart';

class Url extends Equatable {
  final String? raw;
  final String? protocol;
  final List<String>? host;
  final List<String>? path;
  final List<Query>? query;

  const Url({this.raw, this.protocol, this.host, this.path, this.query});

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        raw: json['raw'] as String?,
        protocol: json['protocol'] as String?,
        host: json['host'] as List<String>?,
        path: json['path'] as List<String>?,
        query: (json['query'] as List<dynamic>?)
            ?.map((e) => Query.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'raw': raw,
        'protocol': protocol,
        'host': host,
        'path': path,
        'query': query?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [raw, protocol, host, path, query];
}
