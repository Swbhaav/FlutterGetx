import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startinggetx/firstPage.dart';
import 'package:startinggetx/secondPage.dart';
import 'Controller/tabController.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {

    //This is called dependency injection
    TapController controller = Get.put(TapController());

    return Scaffold(

      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text(controller.x.toString(),style: TextStyle(fontSize: 20, color: Colors.white),)),
              );

            }),
            //Increment Button
            GestureDetector(
              onTap: (){
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap To Increment ",style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
            //FirstPage Button
            GestureDetector(
              onTap: (){
                Get.to(()=>Firstpage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Go to First Page",style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
            //SecondPage Button
            GestureDetector(
              onTap: (){
                Get.to(()=>SecondPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Second Page",style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap that asssss!!!",style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
