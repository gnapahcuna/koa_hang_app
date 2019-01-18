class WorkTitle {
  final String work_id;
  final String work_name;
  final String work_date;

  WorkTitle({this.work_id, this.work_name, this.work_date});

  factory WorkTitle.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return WorkTitle(
      work_id: json['work_id'],
      work_name: json['work_name'],
      work_date: json['work_date'],
    );
  }
}