// ignore_for_file: constant_identifier_names

class ApiUrl {
  static const String version = "1.0.1";

  static const String baseUrl ='https://play-zone.live/';
  static const String configModel ="${baseUrl}admin/index.php/Mahajongapi/";
  // static const String avaitorBaseUrl ="https://admin.play-zone.live/api/aviator/";
  static const String avaitorBaseUrl ="https://admin.play-zone.live/api/";
  static const String TRXBaseUrl ="https://admin.play-zone.live/api/trx/";

  static const String uploadimage ="${baseUrl}admin/uploads/";
  static const String login = "${configModel}login";
  static const String register = "${configModel}register";
  static const String profile = "${configModel}profile?id=";
  static const String banner = "${configModel}colour_slider";
  static const String promotionCount = "${configModel}promotion_dashboard_count?id=";
  static const String walletdash = "${configModel}wallet_dashboard?id=";
  static const String depositHistory = "${configModel}deposit_history?id=";
  static const String withdrawHistory = "${configModel}withdraw_history?id=";
  static const String aboutus = "${configModel}about_us";
  static const String addacount = "${configModel}add_account";
  static const String addAccount_View = "${baseUrl}admin/index.php/Mobile_app/account_get?user_id=";
  static const String HowtoplayApi = "${baseUrl}admin/index.php/Mobile_app/howtoplay?game_id=";
  static const String beginnerapi = "${configModel}beginner_guied_line";
  static const String notificationapi = "${configModel}notification";
  static const String giftcardapi = "${configModel}gift_cart_apply?";
  static const String coinsapi = "${configModel}coins";
  static const String mlm = "${configModel}level_getuserbyrefid?id=";
  static const String withdrawl = "${configModel}withdraw";
  static const String feedback = "${configModel}feedback";
  static const String versionlink = "${configModel}version_apk_link";
  static const String profileUpdate = "${configModel}update_profile";
  static const String deposit = "${configModel}add_money";
  static const String getwayList = "${configModel}pay_modes?userid=";
  static const String planMlm = "${configModel}mlm_plan";
  static const String privacypolicy = "${configModel}privacy_policy";
  static const String termscon = "${configModel}terms_condition";
  static const String contact = "${configModel}contact_us";
  static const String AttendenceList = "${configModel}attendance_list_get?userid=";
  static const String AttendenceGet = "${configModel}attendance?";
  static const String attendenceDays = "${configModel}attendance_claim?userid=";
  static const String attendenceHistory = "${configModel}attendance_history?userid=";
  static const String changepasswordapi = "${configModel}change_password";
  static const String MLM_PLAN = "${configModel}level_getuserbyrefid?id=";
  static const String walletHistory = "${configModel}wallet_history?userid=";
  static const String paymentCheckStatus = "${configModel}payment_verified_done?orderid=";
  static const String extradeposit = "${configModel}extra_first_deposit_bonus?userid=";
  static const String extradepositPayment = "${configModel}extra_first_deposit?";
  static const String usdtdeposit ="https://play-zone.live/admin/api/pending_payment.php";
  static const String usdtdepositHistory ="https://play-zone.live/admin/api/pendingPayment_history.php?";
  static const String usdtQrcodeApi ="https://play-zone.live/admin/index.php/Mahajongapi/usdt_slider";
  static const String usdtQrcodeImage ="https://admin.play-zone.live/images/1711803944_IMG_20240330_180436.jpg";
  // static const String usdtQrcodeImage = "https://admin.playzoner.live/images/";


  ///color prediction
  // https://admin.play-zone.live/api/bet
  static const String ColorPredictionUrl = "https://admin.play-zone.live/api/";
  static const String betColorPrediction = "${ColorPredictionUrl}bet";
  static const String colorresult = "${baseUrl}admin/api/colour_result.php?";
  static const String betHistory = "${configModel}bet_history?id=";
  static const String game_win = "${configModel}game_win?userid=";


  ///avaitor
  // https://admin.bigbossmall.live/api/
  static const String betPlaced = "${avaitorBaseUrl}bet_now?";
  static const String aviatorCashout = "${avaitorBaseUrl}cash_out?";
  static const String betAvaiHistory = "${avaitorBaseUrl}bet_histroy?";
  static const String resultHistory = "${avaitorBaseUrl}result?limit=";
  static const String crashCheckApi = "${avaitorBaseUrl}result_bet?";
  // static const String aviatorWebSocket = "http://13.235.103.93:3006";
  static const String aviatorWebSocket = "http://13.234.226.39:3006";
  static const String aviatorEventName = "playzone";
  static const String aviatorBet = "${avaitorBaseUrl}aviator_bet?uid=";
  static const String aviatorBetCancel = "${avaitorBaseUrl}aviator_bet_cancel?userid=";
  static const String aviatorBetCashOut = "${avaitorBaseUrl}aviator_cashout?salt=";
  static const String aviatorResult = "${avaitorBaseUrl}aviator_last_five_result";
  static const String aviatorBetHistory = "${avaitorBaseUrl}aviator_history?uid=";


  ///trx
  static const String colorresultTRX = '${TRXBaseUrl}result?';
  static const String betHistoryTRX = "${TRXBaseUrl}betHistory";
  static const String betcolorTRX = "${TRXBaseUrl}bet";
  static const String gamewinTRX = "${TRXBaseUrl}game_win?userid=";

}



