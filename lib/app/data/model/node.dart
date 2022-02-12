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
  Wind wind;
  Location location;

  NodePoint(this.id, this.uid, this.name, this.description, this.location_id,
      this.city, this.pm25, this.wind, this.location);

  factory NodePoint.fromJson(Map<String, dynamic> json) =>
      _$NodePointFromJson(json);

  Map<String, dynamic> toJson() => _$NodePointToJson(this);
}
