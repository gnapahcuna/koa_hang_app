class ProductDetail {
  final String product_name;
  final String product_detail;
  final String product_img;
  final String product_vdo;

  ProductDetail({this.product_name, this.product_detail, this.product_img, this.product_vdo});

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return ProductDetail(
      product_name: json['product_name'],
      product_detail: json['product_detail'],
      product_img: json['product_img'],
      product_vdo: json['product_vdo'],
    );
  }
}