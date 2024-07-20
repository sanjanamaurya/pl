// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:playzone/generated/assets.dart';
import 'package:playzone/model/user_model.dart';
import 'package:playzone/res/provider/user_view_provider.dart';
import 'package:playzone/view/home/mini/widget/imagetoast.dart';


class BetColorResultProvider with ChangeNotifier {

  UserViewProvider userProvider = UserViewProvider();

  bool _regLoading = false;
  bool get regLoading =>_regLoading;
  setRegLoading(bool value){
    _regLoading=value;
    notifyListeners();
  }
  Future colorBet(context, String amount, String number,String gameid) async {
    UserModel user = await userProvider.getUser();
    String token = user.id.toString();
    print(token);
    print("anu");
    setRegLoading(true);
    try {
      final response = await http.post(
        Uri.parse("https://admin.play-zone.live/api/bet"),
        // headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "userid": token.toString(),
          "game_id": gameid.toString(),
          "number": number.toString(),
          "amount": amount.toString()
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print(responseData);
        print("responseData");
        if(responseData['status']==200){
          print("good");
          setRegLoading(false);
          Navigator.pop(context);
          ImageToast.show(imagePath: Assets.imagesBetSucessfull, context: context,heights: 200,widths: 200);
        }else{
          Fluttertoast.showToast(msg: responseData['message']);
        }
      } else {
        print("bad");
        // Handle error
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exceptions
      print("Exception: $e");
    }




      //Fluttertoast.showToast(msg: responseData['msg']);
    // }
    // else {
    //   setRegLoading(false);
    //   final Map<String, dynamic> responseData = jsonDecode(response.body);
    //   return Fluttertoast.showToast(msg: responseData['message']);
    // }
  }
}