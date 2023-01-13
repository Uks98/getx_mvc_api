

import 'package:get/get.dart';
import 'package:getx_mvc_http/service/http_service.dart';

import '../data/animal_data.dart';

class FestivalController extends GetxController{
  //late FestivalRepository _festival;
  var festivalList = <Item>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFestival();
  }

  void loadFestival()async{
    var festival = await FestivalRepository().getAllFestivalRepository();
    festivalList.value = festival!;
  }
}