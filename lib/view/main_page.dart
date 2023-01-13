import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx_mvc_http/controller/festival_controller.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  FestivalController _festivalController = Get.put(FestivalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          _festivalController.loadFestival();
        },
      ),
      body: Column(
        children: [
          Expanded(child: GetX<FestivalController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.festivalList.length,
                  itemBuilder: (context,index){
                    final festival = controller.festivalList[index];
                return ListTile(
                  title: Text(festival.auspcInstt.toString()),
                  subtitle: Text(festival.auspcInstt.toString()),
                );
              });
            }
          ))
        ],
      ),
    );
  }
}
