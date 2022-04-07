import 'package:pos/payloads/pricing_payload.dart';
import 'package:pos/payloads/topic_payload.dart';

class ProductPayLoad {
  final String name;
  String? imageUrl;
  String? description;
  List<PricingPayload>? pricing = [];
  TopicPayLoad? topic;

  ProductPayLoad({
    required this.name,
    this.description,
    this.imageUrl,
    this.pricing,
    this.topic,
  });
}
