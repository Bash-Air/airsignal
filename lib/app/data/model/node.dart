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

@JsonSerializable()
class Location {
  double longitude;
  double latitude;

  Location(this.longitude, this.latitude);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class NodePoint {
  int id;
  String uid;
  String name;
  String description;
  int location_id;
  String city;
  double? pm25;
  double? pm10;
  double? temperature;
  double? pressure;
  double? humidity;
  double? aqi;
  String? aqi_category;
  Wind wind;
  Location location;

  NodePoint(this.id, this.uid, this.name, this.description, this.location_id,
      this.city, this.pm25, this.wind, this.location);

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
  int location_id;
  String city;
  double? pm25;
  double? pm10;
  double? temperature;
  double? pressure;
  double? humidity;
  double? aqi;
  String? aqi_category;
  Wind wind;
  Location location;

  Node(this.id, this.uid, this.name, this.description, this.location_id,
      this.city, this.pm25, this.wind, this.location);

  factory Node.fromJson(Map<String, dynamic> json) =>
      _$NodeFromJson(json);

  Map<String, dynamic> toJson() => _$NodeToJson(this);
}

@JsonSerializable()
class NodeHistoryTick {
  String time;
  double aqi;
  double humidity;
  double pm10;
  double? pm25;
  double pressure;
  double temperature;

  NodeHistoryTick(this.time, this.aqi, this.humidity, this.pm10, this.pm25,
      this.pressure, this.temperature);

  factory NodeHistoryTick.fromJson(Map<String, dynamic> json) =>
      _$NodeHistoryTickFromJson(json);

  Map<String, dynamic> toJson() => _$NodeHistoryTickToJson(this);
}
