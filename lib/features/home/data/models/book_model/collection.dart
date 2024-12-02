import 'package:equatable/equatable.dart';

import 'info.dart';
import 'item.dart';

class Collection extends Equatable {
  final Info? info;
  final List<Item>? item;

  const Collection({this.info, this.item});

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        info: json['info'] == null
            ? null
            : Info.fromJson(json['info'] as Map<String, dynamic>),
        item: (json['item'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'info': info?.toJson(),
        'item': item?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [info, item];
}
