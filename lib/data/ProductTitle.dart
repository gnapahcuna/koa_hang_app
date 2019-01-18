class ProductTitle {
  final String product_id;
  final String product_name;
  final String product_date;

  ProductTitle({this.product_id, this.product_name, this.product_date});

  factory ProductTitle.fromJson(Map<String, dynamic> json) {
    //print(json['ImageFile'].toString().substring(3,json['ImageFile'].toString().length));
    return ProductTitle(
      product_id: json['product_id'],
      product_name: json['product_name'],
      product_date: json['product_date'],
    );
  }
}