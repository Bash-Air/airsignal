// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      json['deg'] as int,
      (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'deg': instance.deg,
      'speed': instance.speed,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      (json['longitude'] as num).toDouble(),
      (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

NodePoint _$NodePointFromJson(Map<String, dynamic> json) => NodePoint(
      json['id'] as int,
      json['uid'] as String,
      json['name'] as String,
      json['description'] as String,
      json['location_id'] as int,
      json['city'] as String,
      (json['pm25'] as num?)?.toDouble(),
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
      Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodePointToJson(NodePoint instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'location_id': instance.location_id,
      'city': instance.city,
      'pm25': instance.pm25,
      'wind': instance.wind,
      'location': instance.location,
    };

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      json['id'] as int,
      json['uid'] as String,
      json['name'] as String,
      json['description'] as String,
      json['location_id'] as int,
      json['city'] as String,
      json['pm24'] as int?,
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
      Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'location_id': instance.location_id,
      'city': instance.city,
      'pm24': instance.pm24,
      'wind': instance.wind,
      'location': instance.location,
    };
