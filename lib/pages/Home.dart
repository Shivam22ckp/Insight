import 'package:flutter/material.dart';
import 'package:insight/pages/exrecise.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController userbreakfasteditingController =
      new TextEditingController();
  TextEditingController userluncheditingController =
      new TextEditingController();
  TextEditingController userdinnereditingController =
      new TextEditingController();
  TextEditingController usersnackseditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diet",
          style: TextStyle(
              color: Colors.black, fontFamily: 'Pacifico', fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Your Calorie Consumed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Breakfast",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 90,
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(24)),
                child: (TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  controller: userbreakfasteditingController,
                  decoration: InputDecoration(
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      border: InputBorder.none,
                      hintText: "Enter Your Address",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Text(
                      "Lunch",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.blue[300]),
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(24)),
                      child: (TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black),
                        controller: userluncheditingController,
                        decoration: InputDecoration(
                            fillColor: Colors.black,
                            focusColor: Colors.black,
                            border: InputBorder.none,
                            hintText: "Enter Your Address",
                            hintStyle: TextStyle(color: Colors.white)),
                      )),
                    ),
                  ]),
                  SizedBox(
                    width: 85.0,
                  ),
                  Column(children: [
                    Text(
                      "Total Calorie",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                            height: 50,
                            width: 90,
                            margin: EdgeInsets.symmetric(vertical: 16),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(24)),
                            child: Center(
                              child: Text(
                                '${int.parse(userbreakfasteditingController.text != "" ? userbreakfasteditingController.text : "0") + int.parse(userluncheditingController.text != "" ? userluncheditingController.text : "0") + int.parse(userdinnereditingController.text != "" ? userdinnereditingController.text : "0")}',
                                style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )))
                  ])
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Dinner",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.blue[300]),
              ),
              Container(
                height: 50,
                width: 90,
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(24)),
                child: (TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  controller: userdinnereditingController,
                  decoration: InputDecoration(
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      border: InputBorder.none,
                      hintText: "Enter Your Address",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
              ),
              Text(
                "Snacks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Container(
                height: 50,
                width: 90,
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(24)),
                child: (TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  controller: usersnackseditingController,
                  decoration: InputDecoration(
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      border: InputBorder.none,
                      hintText: "Enter Your Address",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Exercise()));
                },
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
