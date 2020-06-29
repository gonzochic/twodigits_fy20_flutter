import 'dart:convert';

import 'package:http/http.dart' as http;

class Case {
  String name;
  int id;
  int deaths;
  int active;
  int recovered;

  Case({this.id, this.name, this.deaths, this.active, this.recovered});
  factory Case.fromJson(Map<String, dynamic> json) {
    return Case(
        id: int.parse(json["GKZ"]),
        name: json["Bundesland"],
        deaths: int.parse(json["Todesfälle"]),
        active: int.parse(json["Anzahl"]),
        recovered: int.parse(json["Genesen"]));
  }

  String getAbbreviation() {
    switch (id) {
      case 1:
        return "Bgld";
      case 2:
        return "Ktn";
      case 3:
        return "Noe";
      case 4:
        return "Ooe";
      case 5:
        return "Sbg";
      case 6:
        return "Stmk";
      case 7:
        return "T";
      case 8:
        return "Vbg";
      case 9:
        return "W";
      default:
        return "";
    }
  }
}

class CoronaApi {
  static Future<List<Case>> getStatistics() async {
    try {
      var response =
          await http.get("https://covid.softwarecorner.at/api/getStates");
      var states = json.decode(response.body) as List;
      return states.map((json) => Case.fromJson(json)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}
