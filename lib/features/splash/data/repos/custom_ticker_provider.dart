import 'package:flutter/scheduler.dart';

class CustomTickerProvider extends TickerProvider {
  const CustomTickerProvider();
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
