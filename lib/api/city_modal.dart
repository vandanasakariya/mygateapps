
import 'dart:convert';

CityModal cityModalFromJson(String str) => CityModal.fromJson(json.decode(str));

String cityModalToJson(CityModal data) => json.encode(data.toJson());

class CityModal {
  CityModal({
     this.city,
  });

  List<String>? city;

  factory CityModal.fromJson(Map<String, dynamic> json) => CityModal(
    city: List<String>.from(json["city"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "city": List<dynamic>.from(city!.map((x) => x)),
  };
}
// To parse this JSON data, do
//
//     final cityModal = cityModalFromJson(jsonString);

/*
import 'dart:convert';

List<CityModal> cityModalFromJson(String str) => List<CityModal>.from(json.decode(str).map((x) => CityModal.fromJson(x)));

String cityModalToJson(List<CityModal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CityModal {
  CityModal({
    required this.cityId,
    required this.cityName,
  });

  int cityId;
  String cityName;

  factory CityModal.fromJson(Map<String, dynamic> json) => CityModal(
    cityId: json["cityId"],
    cityName: json["cityName"],
  );

  Map<String, dynamic> toJson() => {
    "cityId": cityId,
    "cityName": cityName,
  };
}
*/
