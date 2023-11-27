import 'package:get_it/get_it.dart';
import 'package:campus_hotel_artichaut_frontend/services/review_service.dart';

GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ReviewService>(ReviewService());
}
