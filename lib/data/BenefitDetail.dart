class BenefitDetail {
  final String benefit_name;
  final String benefit_detail;
  final String benefit_img;
  final String benefit_vdo;

  BenefitDetail({this.benefit_name, this.benefit_detail, this.benefit_img, this.benefit_vdo});

  factory BenefitDetail.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return BenefitDetail(
      benefit_name: json['benefit_name'],
      benefit_detail: json['benefit_detail'],
      benefit_img: json['benefit_img'],
      benefit_vdo: json['benefit_vdo'],
    );
  }
}