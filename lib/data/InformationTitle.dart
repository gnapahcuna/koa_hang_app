class InformationTitle {
  final String infor_id;
  final String infor_content;
  final String infor_date;

  InformationTitle({this.infor_id, this.infor_content, this.infor_date});

  factory InformationTitle.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return InformationTitle(
      infor_id: json['infor_id'],
      infor_content: json['infor_content'],
      infor_date: json['infor_date'],
    );
  }
}