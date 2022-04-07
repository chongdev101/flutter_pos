import 'package:get/get.dart';
import 'package:pos/payloads/pricing_payload.dart';
import 'package:pos/payloads/product_payload.dart';
import 'package:pos/payloads/topic_payload.dart';

class ProductController extends GetxController {
  List<TopicPayLoad> topics = [];
  List<ProductPayLoad> products = [];
  List<PriceTypePayload> pricingTypes = [];

  @override
  void onInit() {
    super.onInit();

    initPricing();
    initTopic();

    initProduct();
  }

  void initProduct() {
    // เครื่องดื่มใหม่
    products.add(ProductPayLoad(
      name: 'โกโก้ คลาวด์ มัคคิอาโต',
      description:
          'ฟองนมเนียนนุ่มผสมกับช็อตเอสเพรสโซ่ ซอสช็อกโกแลตเพิ่มความหอมหวานละมุนด้วยน้ำเชื่อมวานิลา และซอสมอค',
      pricing: [
        PricingPayload(price: 155, priceType: getPricingType('short')),
        PricingPayload(price: 170, priceType: getPricingType('tall')),
        PricingPayload(price: 185, priceType: getPricingType('grande')),
        PricingPayload(price: 200, priceType: getPricingType('venti')),
      ],
      topic: getTopic('highlight-beverages'),
    ));

    products.add(ProductPayLoad(
      name: 'ไอซ์ โกโก้ คลาวด์ มัคคิอาโต',
      description:
          'ฟองนมเนียนนุ่มผสมกับช็อตเอสเพรสโซ่ ซอสช็อกโกแลตเพิ่มความหอมหวานละมุนด้วยน้ำเชื่อมวานิลา และซอสมอคค่าบนฟองนม',
      pricing: [
        PricingPayload(price: 170, priceType: getPricingType('tall')),
        PricingPayload(price: 185, priceType: getPricingType('grande')),
        PricingPayload(price: 200, priceType: getPricingType('venti')),
      ],
      topic: getTopic('highlight-beverages'),
    ));

    // เครื่องดื่มร้อนอื่นๆ
    products.add(ProductPayLoad(
      name: 'คลาสสิค ช็อกโกแลต',
      description: 'นมผสมน้ำเชื่อมช็อกโกแลต ท็อปด้วยวิปครีม และซอสช็อกโกแลต',
      pricing: [
        PricingPayload(price: 115, priceType: getPricingType('tall')),
        PricingPayload(price: 130, priceType: getPricingType('grande')),
        PricingPayload(price: 145, priceType: getPricingType('venti')),
      ],
      topic: getTopic('other-hot-beverages'),
    ));
    products.add(ProductPayLoad(
      name: 'ซิกเนเจอร์ ช็อกโกแลต',
      description: 'ช็อกโกแลตร้อน ท็อปด้วยวิปครีม และผงช็อกโกแลต',
      pricing: [
        PricingPayload(price: 135, priceType: getPricingType('tall')),
        PricingPayload(price: 150, priceType: getPricingType('grande')),
        PricingPayload(price: 165, priceType: getPricingType('venti')),
      ],
      topic: getTopic('other-hot-beverages'),
    ));
    products.add(ProductPayLoad(
      name: 'นมสด',
      description: 'นมสุดอุ่นร้อน',
      pricing: [
        PricingPayload(price: 105, priceType: getPricingType('tall')),
        PricingPayload(price: 120, priceType: getPricingType('grande')),
        PricingPayload(price: 135, priceType: getPricingType('venti')),
      ],
      topic: getTopic('other-hot-beverages'),
    ));
  }

  void initTopic() {
    topics.add(TopicPayLoad(
      name: 'เครื่องดื่มใหม่',
      code: 'highlight-beverages',
    ));
    topics.add(TopicPayLoad(
      name: 'กาแฟร้อน',
      code: 'hot-coffees',
    ));
    topics.add(TopicPayLoad(
      name: 'ชาร้อน',
      code: 'hot-teas',
    ));
    topics.add(TopicPayLoad(
      name: 'เครื่องดื่มร้อนอื่นๆ',
      code: 'other-hot-beverages',
    ));
  }

  void initPricing() {
    pricingTypes.add(PriceTypePayload(name: 'Short', code: 'short'));
    pricingTypes.add(PriceTypePayload(name: 'Tall', code: 'tall'));
    pricingTypes.add(PriceTypePayload(name: 'Grande', code: 'grande'));
    pricingTypes.add(PriceTypePayload(name: 'Venti', code: 'venti'));
  }

  PriceTypePayload getPricingType(String code) {
    return pricingTypes.firstWhere((type) => type.code == code);
  }

  TopicPayLoad getTopic(String code) {
    return topics.firstWhere((type) => type.code == code);
  }
}
