// To parse this JSON data, do
//
//     final covidata = covidataFromMap(jsonString);

import 'dart:convert';

class Covidata {
  Covidata({
    required this.data,
    required this.cacheHit,
  });

  Data data;
  bool cacheHit;

  factory Covidata.fromJson(String str) => Covidata.fromMap(json.decode(str));

  factory Covidata.fromMap(Map<String, dynamic> json) => Covidata(
        data: Data.fromMap(json["data"]),
        cacheHit: json["_cacheHit"],
      );
}

class Data {
  Data({
    required this.coordinates,
    required this.name,
    required this.code,
    required this.population,
    required this.updatedAt,
    required this.today,
    required this.latestData,
    required this.timeline,
  });

  Coordinates coordinates;
  String name;
  String code;
  int population;
  DateTime updatedAt;
  Today today;
  LatestData latestData;
  List<Timeline> timeline;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        coordinates: Coordinates.fromMap(json["coordinates"]),
        name: json["name"],
        code: json["code"],
        population: json["population"],
        updatedAt: DateTime.parse(json["updated_at"]),
        today: Today.fromMap(json["today"]),
        latestData: LatestData.fromMap(json["latest_data"]),
        timeline: List<Timeline>.from(
            json["timeline"].map((x) => Timeline.fromMap(x))),
      );
}

class Coordinates {
  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  int latitude;
  int longitude;

  factory Coordinates.fromJson(String str) =>
      Coordinates.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Coordinates.fromMap(Map<String, dynamic> json) => Coordinates(
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toMap() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

class LatestData {
  LatestData({
    this.deaths,
    this.confirmed,
    this.recovered,
    this.critical,
    this.calculated,
  });

  int? deaths;
  int? confirmed;
  int? recovered;
  int? critical;
  Calculated? calculated;

  factory LatestData.fromJson(String str) =>
      LatestData.fromMap(json.decode(str));

  factory LatestData.fromMap(Map<String, dynamic> json) => LatestData(
        deaths: json["deaths"],
        confirmed: json["confirmed"],
        recovered: json["recovered"],
        critical: json["critical"],
        calculated: Calculated.fromMap(json["calculated"]),
      );
}

class Calculated {
  Calculated({
    required this.deathRate,
    required this.recoveryRate,
    required this.recoveredVsDeathRatio,
    required this.casesPerMillionPopulation,
  });

  double deathRate;
  double recoveryRate;
  dynamic recoveredVsDeathRatio;
  int casesPerMillionPopulation;

  factory Calculated.fromJson(String str) =>
      Calculated.fromMap(json.decode(str));

  factory Calculated.fromMap(Map<String, dynamic> json) => Calculated(
        deathRate: json["death_rate"].toDouble(),
        recoveryRate: json["recovery_rate"].toDouble(),
        recoveredVsDeathRatio: json["recovered_vs_death_ratio"],
        casesPerMillionPopulation: json["cases_per_million_population"],
      );
}

class Timeline {
  Timeline({
    required this.updatedAt,
    required this.date,
    required this.deaths,
    required this.confirmed,
    required this.recovered,
    required this.newConfirmed,
    required this.newRecovered,
    required this.newDeaths,
    required this.active,
  });

  DateTime updatedAt;
  DateTime date;
  int deaths;
  int confirmed;
  int recovered;
  int newConfirmed;
  int newRecovered;
  int newDeaths;
  int active;

  factory Timeline.fromJson(String str) => Timeline.fromMap(json.decode(str));

  factory Timeline.fromMap(Map<String, dynamic> json) => Timeline(
        updatedAt: DateTime.parse(json["updated_at"]),
        date: DateTime.parse(json["date"]),
        deaths: json["deaths"],
        confirmed: json["confirmed"],
        recovered: json["recovered"],
        newConfirmed: json["new_confirmed"],
        newRecovered: json["new_recovered"],
        newDeaths: json["new_deaths"],
        active: json["active"],
      );
}

class Today {
  Today({
    required this.deaths,
    required this.confirmed,
  });

  int deaths;
  int confirmed;

  factory Today.fromJson(String str) => Today.fromMap(json.decode(str));
  factory Today.fromMap(Map<String, dynamic> json) => Today(
        deaths: json["deaths"],
        confirmed: json["confirmed"],
      );
}
