import 'package:equatable/equatable.dart';

class Info extends Equatable {
  final String? postmanId;
  final String? name;
  final String? schema;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final String? lastUpdatedBy;
  final String? uid;

  const Info({
    this.postmanId,
    this.name,
    this.schema,
    this.updatedAt,
    this.createdAt,
    this.lastUpdatedBy,
    this.uid,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        postmanId: json['_postman_id'] as String?,
        name: json['name'] as String?,
        schema: json['schema'] as String?,
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        lastUpdatedBy: json['lastUpdatedBy'] as String?,
        uid: json['uid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_postman_id': postmanId,
        'name': name,
        'schema': schema,
        'updatedAt': updatedAt?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'lastUpdatedBy': lastUpdatedBy,
        'uid': uid,
      };

  @override
  List<Object?> get props {
    return [
      postmanId,
      name,
      schema,
      updatedAt,
      createdAt,
      lastUpdatedBy,
      uid,
    ];
  }
}
