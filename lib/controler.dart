import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:playzone/model/user_model.dart';
import 'package:playzone/res/api_urls.dart';
import 'package:playzone/res/provider/user_view_provider.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;



class Profile with ChangeNotifier {
  dynamic wallet;
  dynamic aviatorLink;
  dynamic aviatorEventName;

  UserViewProvider userProvider = UserViewProvider();
  void ProfileData() async {
    try {
      UserModel user = await userProvider.getUser();
      String token = user.id.toString();
      print(token);
      print("token");
      final url = Uri.parse(ApiUrl.profile+token);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        wallet=responseData['data']['wallet'];
        aviatorLink = responseData['data']["aviator_link"];
        aviatorEventName = responseData['data']["aviator_event_name"];

        print(wallet);
        print(responseData);
        print('profile api refresh');
        notifyListeners();
      } else {
        throw Exception("Failed to load data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to load data. $e");
    }
  }
}