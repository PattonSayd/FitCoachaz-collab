import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';

@freezed
abstract class Coach with _$Coach {
  factory Coach({
    required final String name,
    required final String surname,
    required final String photo,
    required final String sport,
    required final double? rating,
    required final String? searchKeys,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'work_time') required final String workTime,
  }) = _Coach;
  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}
