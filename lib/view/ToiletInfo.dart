import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvc_http/controller/toilet_controller.dart';


class ToiletPage extends StatelessWidget {
  ToiletPage({Key? key}) : super(key: key);
  ToiletController _toiletController = Get.put(ToiletController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: GetX<ToiletController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.toiletList.length,
                  itemBuilder: (context,index){
                    final len = controller.toiletList[index];
                return ListTile(
                  title: Text("${len.fluffy}"),
                  subtitle: Text("${len.datum}"),
                );
              });
            }
          ))
        ],
      ),
    );
  }
}
