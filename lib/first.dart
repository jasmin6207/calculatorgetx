import 'package:flutter/material.dart';
import 'package:get/get.dart';
class firstpage extends StatelessWidget {

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  Model m = Get.put(Model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Calculator with GetX",
          style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller:  first,
                keyboardType: TextInputType.number,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 3)
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter First",
                  labelText: "First",
                  labelStyle: TextStyle(color: Colors.pink),
                ),
              ),
            )
          ),
          Center(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                child: TextField(
                  controller:  second,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink, width: 3)
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Enter second",
                    labelText: "second",
                    labelStyle: TextStyle(color: Colors.pink),
                  ),
                ),
              )
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Obx(() => Text("Answer : ${m.ans}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold),
              ))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: (){

                      String First = first.text;
                      String Second = second.text;

                      m.plus(First, Second);

                    }, child: Text("+",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
                )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: (){

                      String First = first.text;
                      String Second = second.text;

                      m.plus(First, Second);

                    }, child: Text("-",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: (){

                      String First = first.text;
                      String Second = second.text;

                      m.plus(First, Second);

                    }, child: Text("*",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: (){

                      String First = first.text;
                      String Second = second.text;

                      m.plus(First, Second);

                    }, child: Text("/",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),

            ],
          )
        ],
      ),
    );
  }
}


class Model extends GetxController{
  RxDouble ans = 0.0.obs;

  void plus (
      String First,
      String Second,
      )
  {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty){
      a = double.parse(Second);
    }

    double c = a+b;
    ans.value = c;
    print(ans);
  }

  void minus (
      String First,
      String Second,
      )
  {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty){
      a = double.parse(Second);
    }

    double c = a-b;
    ans.value = c;
    print(ans);
  }

  void multi (
      String First,
      String Second,
      )
  {
    double a= 0;
    double b= 0;

    if (First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty){
      a = double.parse(Second);
    }

    double c = a*b;
    ans.value = c;
    print(ans);
  }

  void div (
      String First,
      String Second,
      )
  {
    double a= 0;
    double b= 0;

    if (First.trim().isNotEmpty){
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty){
      a = double.parse(Second);
    }

    double c = a/b;
    ans.value = c;
    print(ans);
  }
}