import 'package:json_annotation/json_annotation.dart';

part 'node.g.dart';

@JsonSerializable()
class Wind {
  int deg;
  double speed;

  Wind(this.deg, this.speed);

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
}

// @JsonSerializable()
// class Location {
//   double longitude;
//   double latitude;
//
//   Location(this.longitude, this.latitude);
//
//   factory Location.fromJson(Map<String, dynamic> json) =>
//       _$LocationFromJson(json);
//
//   Map<String, dynamic> toJson() => _$LocationToJson(this);
// }

@JsonSerializable()
class NodePoint {
  int id;
  String uid;
  String name;
  String description;
  double latitude;
  double longitude;
  String city;
  int? pm25;
  int? pm10;
  int? temperature;
  int? pressure;
  int? humidity;
  int? aqi;
  String? aqi_category;
  Wind wind;

  NodePoint(this.id, this.uid, this.name, this.description, this.latitude, this.longitude,
      this.city, this.pm25, this.wind);

  factory NodePoint.fromJson(Map<String, dynamic> json) =>
      _$NodePointFromJson(json);

  Map<String, dynamic> toJson() => _$NodePointToJson(this);
}

@JsonSerializable()
class Node {
  int id;
  String uid;
  String name;
  String description;
  double latitude;
  double longitude;
  String city;
  int? pm25;
  int? pm10;
  int? temperature;
  int? pressure;
  int? humidity;
  int? aqi;
  String? aqi_category;
  Wind wind;

  Node(this.id, this.uid, this.name, this.description, this.latitude, this.longitude,
      this.city, this.pm25, this.wind);

  factory Node.fromJson(Map<String, dynamic> json) =>
      _$NodeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeToJson(this);
}

@JsonSerializable()
class NodeHistoryTick {
  String time;
  int aqi;
  int humidity;
  int pm10;
  int? pm25;
  int pressure;
  int temperature;

  NodeHistoryTick(this.time, this.aqi, this.humidity, this.pm10, this.pm25,
      this.pressure, this.temperature);

  factory NodeHistoryTick.fromJson(Map<String, dynamic> json) =>
      _$NodeHistoryTickFromJson(json);

  Map<String, dynamic> toJson() => _$NodeHistoryTickToJson(this);
}
