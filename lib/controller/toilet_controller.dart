
import 'package:get/get.dart';
import 'package:getx_mvc_http/data/ToiletData.dart';
import 'package:get/get.dart';
import 'package:getx_mvc_http/service/toilet_http_service.dart';
class ToiletController extends GetxController{
  var toiletList = <ToiletInfo>[].obs;

  @override
  void onInit() {
    super.onInit();
    getToiletData();
  }

  void getToiletData ()async{
    var toilet = await ToiletService().getToiletList();
    toiletList.value = toilet!;
  }
}