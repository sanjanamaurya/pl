
import 'dart:convert';
import 'package:playzone/main.dart';
import 'package:playzone/res/aap_colors.dart';
import 'package:playzone/res/api_urls.dart';
import 'package:playzone/res/components/app_bar.dart';
import 'package:playzone/res/components/app_btn.dart';
import 'package:playzone/res/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:http/http.dart' as http;



class HowtoplayScreen extends StatefulWidget {
  const HowtoplayScreen({super.key});

  @override
  State<HowtoplayScreen> createState() => _HowtoplayScreenState();
}

class _HowtoplayScreenState extends State<HowtoplayScreen> {

  @override
  void initState() {
    howToPlay();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      appBar: GradientAppBar(
        leading: const AppBackBtn(),
          title: textWidget(
              text: 'How to Play',
              fontSize: 25,
              color: AppColors.primaryTextColor),
          gradient: AppColors.primaryGradient),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              play!=null?
              HtmlWidget(play.toString(),textStyle:TextStyle(color: Colors.black),):Container(
                height: 10,
                width: 10,
                color: Colors.blue,
              )
            ),


          ],
        ),


      ),
    ));
  }


  // var disc;
  // var name;
  // fetchHowtoplayDatacolor() async {
  //
  //   final response = await http.get(Uri.parse('${ApiUrl.HowtoplayApi}2')).timeout(const Duration(seconds: 10));
  //
  //   print(ApiUrl.HowtoplayApi+"2");
  //   print("ApiUrl.HowtoplayApi2");
  //   if(response.statusCode==200){
  //     print(response.statusCode);
  //     print("guyguggggu");
  //     final responseData = json.decode(response.body)['data'];
  //     print(responseData);
  //     print('wwwwww');
  //     print('wwwwww');
  //     setState(() {
  //       disc= responseData['description'];
  //
  //     });
  //
  //
  //
  //     print("guygugu");
  //
  //   }else{
  //     throw Exception("load to display");
  //   }
  // }


  String play='';
  howToPlay() async {
    final response = await http.get(Uri.parse("https://admin.play-zone.live/api/how-to-play",));
    final data= jsonDecode(response.body);
    if (data['status'] == "200") {

      setState(() {
        play=data['data'];
      });
      print(play);
      print("chala ja ");
    } else {
      throw Exception('Failed to load data');
    }
  }


}
