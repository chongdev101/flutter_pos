class PricingPayload {
  final double price;
  final PriceTypePayload? priceType;

  PricingPayload({
    required this.price,
    required this.priceType,
  });
}

class PriceTypePayload {
  final String name;
  final String code;

  PriceTypePayload({
    required this.name,
    required this.code,
  });
}
