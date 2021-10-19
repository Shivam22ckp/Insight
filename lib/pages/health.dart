import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  Health({Key? key}) : super(key: key);

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  TextEditingController userhappyeditingController =
      new TextEditingController();
  TextEditingController usermotivatededitingController =
      new TextEditingController();
  TextEditingController usersocialeditingController =
      new TextEditingController();
  TextEditingController usercreativeeditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MENTAL HEALTH ASSESSMENT",
          style: TextStyle(
              color: Colors.black, fontFamily: 'Pacifico', fontSize: 18.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Text(
                "Rate Yourself out of 10",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(children: [
                Text(
                  "1. Happiness",
                  style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30.0,
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
                    controller: userhappyeditingController,
                    decoration: InputDecoration(
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        border: InputBorder.none,
                        hintText: "Enter Your Address",
                        hintStyle: TextStyle(color: Colors.white)),
                  )),
                ),
              ]),
              Row(children: [
                Text(
                  "2. Motivated",
                  style: TextStyle(
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
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
                    controller: usermotivatededitingController,
                    decoration: InputDecoration(
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        border: InputBorder.none,
                        hintText: "Enter Your Address",
                        hintStyle: TextStyle(color: Colors.white)),
                  )),
                ),
              ]),
              Row(
                children: [
                  Text(
                    "3. Social",
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 60.0,
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
                      controller: usersocialeditingController,
                      decoration: InputDecoration(
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          border: InputBorder.none,
                          hintText: "Enter Your Address",
                          hintStyle: TextStyle(color: Colors.white)),
                    )),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "4. Creative",
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40.0,
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
                      controller: usercreativeeditingController,
                      decoration: InputDecoration(
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          border: InputBorder.none,
                          hintText: "Enter Your Address",
                          hintStyle: TextStyle(color: Colors.white)),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total :",
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Text(
                      '${int.parse(userhappyeditingController.text != "" ? userhappyeditingController.text : "0") + int.parse(usermotivatededitingController.text != "" ? usermotivatededitingController.text : "0") + int.parse(usersocialeditingController.text != "" ? usersocialeditingController.text : "0") + int.parse(usercreativeeditingController.text != "" ? usercreativeeditingController.text : "0")}' +
                          "/40",
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
