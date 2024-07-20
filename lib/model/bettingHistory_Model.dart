// ignore_for_file: non_constant_identifier_names

// class BettingHistoryModel {
//   final dynamic amount;
//   // final dynamic color;
//   final dynamic commission;
//   final dynamic datetime;
//   final dynamic gameid;
//   final dynamic gamesno;
//   final dynamic id;
//   final dynamic number;
//   final dynamic status;
//   final dynamic sub_number;
//   final dynamic totalamount;
//   final dynamic userid;
//   final dynamic win;
//
//   BettingHistoryModel({
//     required this.amount,
//     // required this.color,
//     required this.commission,
//     required this.datetime,
//     required this.gameid,
//     required this.gamesno,
//     required this.id,
//     required this.number,
//     required this.status,
//     required this.sub_number,
//     required this.totalamount,
//     required this.userid,
//     required this.win,
//
//   });
//   factory BettingHistoryModel.fromJson(Map<String, dynamic> json) {
//     return BettingHistoryModel(
//       amount: json['amount'],
//       // color: json['color'],
//       commission: json['commission'],
//       datetime: json['created_at'],
//       gameid: json['game_id'],
//       gamesno: json['game_no'],
//       id: json['id'],
//       number: json['number'],
//       status: json['status'],
//       sub_number: json['sub_number'],
//       totalamount: json['totalamount'],
//       userid: json['userid'],
//       win: json['win_amount'],
//
//     );
//   }
// }
class BettingHistoryModel {
  final int id;
  final int amount;
  final dynamic commission;
  final dynamic tradeAmount;
  final dynamic winAmount;
  final int number;
  final dynamic winNumber;
  final String gameNo;
  final String gameId;
  final String userId;
  final String status;
  final String createdAt;
  final String updatedAt;
  final String gameName;
  final String name;

  BettingHistoryModel({
    required this.id,
    required this.amount,
    required this.commission,
    required this.tradeAmount,
    required this.winAmount,
    required this.number,
    required this.winNumber,
    required this.gameNo,
    required this.gameId,
    required this.userId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.gameName,
    required this.name,
  });

  factory BettingHistoryModel.fromJson(Map<String, dynamic> json) {
    return BettingHistoryModel(
      id: json['id'],
      amount: json['amount'],
      commission: json['commission'],
      tradeAmount: json['trade_amount'],
      winAmount: json['win_amount'],
      number: json['number'],
      winNumber: json['win_number'],
      gameNo: json['game_no'],
      gameId: json['game_id'],
      userId: json['userid'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      gameName: json['game_name'],
      name: json['name'],
    );
  }
}
