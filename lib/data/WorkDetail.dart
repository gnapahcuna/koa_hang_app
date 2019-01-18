class WorkDetail {
  final String work_name;
  final String work_detail;
  final String work_img;
  final String work_vdo;

  WorkDetail({this.work_name, this.work_detail, this.work_img, this.work_vdo});

  factory WorkDetail.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return WorkDetail(
      work_name: json['work_name'],
      work_detail: json['work_detail'],
      work_img: json['work_img'],
      work_vdo: json['work_vdo'],
    );
  }
}