class TcModel {
  final String? name;
  final String? disc;
  final String? telegramTwo;


  TcModel({
    required this.name,
    required this.disc,
    required this.telegramTwo,

  });

  factory TcModel.fromJson(Map<dynamic, dynamic> json) {
    return TcModel(
      name: json['name'],
      disc: json['disc'],
      telegramTwo: json['telegram_link'],

    );
  }
}
