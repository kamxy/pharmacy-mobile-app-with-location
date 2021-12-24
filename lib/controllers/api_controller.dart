import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pharmacy_app/models/eczane_model.dart';

import 'package:http/http.dart' as http;

class ApiController {
  Future<List<Eczane>> getPharmacyList(
      {@required district, @required city}) async {
    List<Eczane> eczaneList = [];

    final response = await http.get(
        Uri.parse(
            "https://www.nosyapi.com/apiv2/pharmacy?city=$city&county=$district"),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization':
              "Bearer 0vsSFcpEdCbckx3uUqwLuS6OiaEyVqLxhr2WmpH3im094YAdEgmhOprxC1cW",
        });
    var responseJson = jsonDecode(response.body);
    responseJson['data'].forEach((element) {
      eczaneList.add(Eczane.fromJson(element));
    });

    return eczaneList;
  }

  Future<List<Eczane>> getPharmacyListWithLocation(
      {@required long, @required lat}) async {
    List<Eczane> eczaneList = [];

    final response = await http.get(
        Uri.parse(
            "https://www.nosyapi.com/apiv2/pharmacy/distance?latitude=$lat&longitude=$long"),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization':
              "Bearer 0vsSFcpEdCbckx3uUqwLuS6OiaEyVqLxhr2WmpH3im094YAdEgmhOprxC1cW",
        });
    var responseJson = jsonDecode(response.body);
    responseJson['data'].forEach((element) {
      eczaneList.add(Eczane.fromJson(element));
    });

    return eczaneList;
  }
}
