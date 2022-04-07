import 'package:pos/payloads/product_payload.dart';

class TopicPayLoad {
  final String code;
  final String name;
  String? imageUrl;
  String? description;
  List<ProductPayLoad>? products = [];

  TopicPayLoad({
    required this.code,
    required this.name,
    this.description,
    this.imageUrl,
    this.products,
  });
}
