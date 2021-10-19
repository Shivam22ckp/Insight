import 'package:flutter/material.dart';
import 'package:insight/pages/health.dart';

class Exercise extends StatefulWidget {
  Exercise({Key? key}) : super(key: key);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  TextEditingController usercalorieseditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercise",
          style: TextStyle(
              color: Colors.black, fontFamily: 'Pacifico', fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Text(
                "Calories Burnt",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[300],
                    fontSize: 36.0),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              height: 90,
              width: 180,
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(24)),
              child: (TextField(
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                controller: usercalorieseditingController,
                decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    border: InputBorder.none,
                    hintText: "Calorie burnt",
                    hintStyle: TextStyle(color: Colors.black)),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Health()));
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
    );
  }
}
