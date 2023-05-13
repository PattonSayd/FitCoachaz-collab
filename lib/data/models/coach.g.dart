// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coach _$$_CoachFromJson(Map<String, dynamic> json) => _$_Coach(
      name: json['name'] as String,
      surname: json['surname'] as String,
      photo: json['photo'] as String,
      sport: json['sport'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      workTime: json['work_time'] as String,
    );

Map<String, dynamic> _$$_CoachToJson(_$_Coach instance) => <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'photo': instance.photo,
      'sport': instance.sport,
      'rating': instance.rating,
      'work_time': instance.workTime,
    };
