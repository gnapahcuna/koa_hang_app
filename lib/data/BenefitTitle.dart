class BenefitTitle {
  final String benefit_id;
  final String benefit_name;
  final String benefit_date;

  BenefitTitle({this.benefit_id, this.benefit_name, this.benefit_date});

  factory BenefitTitle.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return BenefitTitle(
      benefit_id: json['benefit_id'],
      benefit_name: json['benefit_name'],
      benefit_date: json['benefit_date'],
    );
  }
}