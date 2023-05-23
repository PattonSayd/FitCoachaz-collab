import 'package:freezed_annotation/freezed_annotation.dart';

part 'sports.freezed.dart';
part 'sports.g.dart';

@freezed
abstract class Sports with _$Sports {
  factory Sports({
    required final String sport,
    required final String image,
  }) = _Sports;

  factory Sports.fromJson(Map<String, dynamic> json) => _$SportsFromJson(json);
}
