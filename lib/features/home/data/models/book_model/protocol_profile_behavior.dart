import 'package:equatable/equatable.dart';

class ProtocolProfileBehavior extends Equatable {
  final bool? disableBodyPruning;

  const ProtocolProfileBehavior({this.disableBodyPruning});

  factory ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) {
    return ProtocolProfileBehavior(
      disableBodyPruning: json['disableBodyPruning'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
        'disableBodyPruning': disableBodyPruning,
      };

  @override
  List<Object?> get props => [disableBodyPruning];
}
