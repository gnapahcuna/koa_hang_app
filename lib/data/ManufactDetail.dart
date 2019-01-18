class ManufactDetail {
  final String manufact_name;
  final String manufact_detail;
  final String manufact_img;
  final String manufact_vdo;

  ManufactDetail({this.manufact_name, this.manufact_detail, this.manufact_img, this.manufact_vdo});

  factory ManufactDetail.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return ManufactDetail(
      manufact_name: json['manufact_name'],
      manufact_detail: json['manufact_detail'],
      manufact_img: json['manufact_img'],
      manufact_vdo: json['manufact_vdo'],
    );
  }
}