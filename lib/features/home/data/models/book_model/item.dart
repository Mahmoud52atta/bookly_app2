import 'package:equatable/equatable.dart';

import 'protocol_profile_behavior.dart';
import 'request.dart';

class Item extends Equatable {
  final String? name;
  final String? id;
  final ProtocolProfileBehavior? protocolProfileBehavior;
  final Request? request;
  final List<dynamic>? response;
  final String? uid;

  const Item({
    this.name,
    this.id,
    this.protocolProfileBehavior,
    this.request,
    this.response,
    this.uid,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json['name'] as String?,
        id: json['id'] as String?,
        protocolProfileBehavior: json['protocolProfileBehavior'] == null
            ? null
            : ProtocolProfileBehavior.fromJson(
                json['protocolProfileBehavior'] as Map<String, dynamic>),
        request: json['request'] == null
            ? null
            : Request.fromJson(json['request'] as Map<String, dynamic>),
        response: json['response'] as List<dynamic>?,
        uid: json['uid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
        'protocolProfileBehavior': protocolProfileBehavior?.toJson(),
        'request': request?.toJson(),
        'response': response,
        'uid': uid,
      };

  @override
  List<Object?> get props {
    return [
      name,
      id,
      protocolProfileBehavior,
      request,
      response,
      uid,
    ];
  }
}
