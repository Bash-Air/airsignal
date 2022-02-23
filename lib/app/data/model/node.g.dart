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

NodePoint _$NodePointFromJson(Map<String, dynamic> json) => NodePoint(
      json['id'] as int,
      json['uid'] as String,
      json['name'] as String,
      json['description'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      json['city'] as String,
      json['pm25'] as int?,
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
    )
      ..pm10 = json['pm10'] as int?
      ..temperature = json['temperature'] as int?
      ..pressure = json['pressure'] as int?
      ..humidity = json['humidity'] as int?
      ..aqi = json['aqi'] as int?
      ..aqi_category = json['aqi_category'] as String?;

Map<String, dynamic> _$NodePointToJson(NodePoint instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
      'pm25': instance.pm25,
      'pm10': instance.pm10,
      'temperature': instance.temperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'aqi': instance.aqi,
      'aqi_category': instance.aqi_category,
      'wind': instance.wind,
    };

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      json['id'] as int,
      json['uid'] as String,
      json['name'] as String,
      json['description'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      json['city'] as String,
      json['pm25'] as int?,
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
    )
      ..pm10 = json['pm10'] as int?
      ..temperature = json['temperature'] as int?
      ..pressure = json['pressure'] as int?
      ..humidity = json['humidity'] as int?
      ..aqi = json['aqi'] as int?
      ..aqi_category = json['aqi_category'] as String?;

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'city': instance.city,
      'pm25': instance.pm25,
      'pm10': instance.pm10,
      'temperature': instance.temperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'aqi': instance.aqi,
      'aqi_category': instance.aqi_category,
      'wind': instance.wind,
    };

NodeHistoryTick _$NodeHistoryTickFromJson(Map<String, dynamic> json) =>
    NodeHistoryTick(
      json['time'] as String,
      json['aqi'] as int,
      json['humidity'] as int,
      json['pm10'] as int,
      json['pm25'] as int?,
      json['pressure'] as int,
      json['temperature'] as int,
    );

Map<String, dynamic> _$NodeHistoryTickToJson(NodeHistoryTick instance) =>
    <String, dynamic>{
      'time': instance.time,
      'aqi': instance.aqi,
      'humidity': instance.humidity,
      'pm10': instance.pm10,
      'pm25': instance.pm25,
      'pressure': instance.pressure,
      'temperature': instance.temperature,
    };
