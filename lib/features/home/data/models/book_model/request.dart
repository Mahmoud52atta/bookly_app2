import 'package:equatable/equatable.dart';

import 'url.dart';

class Request extends Equatable {
  final String? method;
  final List<dynamic>? header;
  final Url? url;

  const Request({this.method, this.header, this.url});

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        method: json['method'] as String?,
        header: json['header'] as List<dynamic>?,
        url: json['url'] == null
            ? null
            : Url.fromJson(json['url'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'method': method,
        'header': header,
        'url': url?.toJson(),
      };

  @override
  List<Object?> get props => [method, header, url];
}
