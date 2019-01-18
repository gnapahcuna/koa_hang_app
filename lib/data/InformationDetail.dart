class InformayionDetail {
  final String infor_content;
  final String infor_detail;
  final String infor_img;
  final String infor_vdo;

  InformayionDetail({this.infor_content, this.infor_detail, this.infor_img, this.infor_vdo});

  factory InformayionDetail.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return InformayionDetail(
      infor_content: json['infor_content'],
      infor_detail: json['infor_detail'],
      infor_img: json['infor_img'],
      infor_vdo: json['infor_vdo'],
    );
  }
}