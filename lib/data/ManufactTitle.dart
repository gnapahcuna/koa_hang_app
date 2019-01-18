class ManufactTitle {
  final String manufact_id;
  final String manufact_name;
  final String manufact_date;

  ManufactTitle({this.manufact_id, this.manufact_name, this.manufact_date});

  factory ManufactTitle.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return ManufactTitle(
      manufact_id: json['manufact_id'],
      manufact_name: json['manufact_name'],
      manufact_date: json['manufact_date'],
    );
  }
}