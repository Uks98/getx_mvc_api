import 'package:flutter/material.dart';


class ToiletPage extends StatelessWidget {
  const ToiletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
            return ListTile(
              title: Text(""),
              subtitle: Text(""),
            );
          }))
        ],
      ),
    );
  }
}
