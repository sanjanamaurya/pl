
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:playzone/model/user_model.dart';
import 'package:playzone/res/api_urls.dart';
import 'package:playzone/res/provider/user_view_provider.dart';



class AviatorWallet with ChangeNotifier {
  double _fixedbalance=0;
  double _balance=0;
  double get fixed => _fixedbalance;
  double get balance => _balance;



  void updateBal(double value) {
    _balance = _fixedbalance-value;
    notifyListeners();
  }


  wallet() async {
    //get id
    UserViewProvider userProvider = UserViewProvider();

    UserModel user = await userProvider.getUser();
    String token = user.id.toString();

    try {
      final response = await http.get(Uri.parse(ApiUrl.profile + token),).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final jsonMap = json.decode(response.body)['user'];
        if (kDebugMode) {
          print(jsonMap);
          print('pankaj');
        }
        _fixedbalance=double.parse(jsonMap['wallet']);
        _balance=_fixedbalance;

        notifyListeners();
      } else {
        throw Exception('Failed to load user data');
      }
    } on SocketException {
      throw Exception('No Internet connection');
    }
  }
}