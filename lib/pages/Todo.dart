import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:insight/pages/Addpage.dart';
import 'package:insight/services/database.dart';
import 'package:insight/services/shared_pref.dart';

class Todo extends StatefulWidget {
  Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  String id = "";
  getMyInfoFromSharedPreference() async {
    id = await SharedPreferenceHelper().getUserId();
  }

  Widget Snacks() {
    return StreamBuilder(
      stream: userstream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.docs[index];
                  return SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Card(
                        elevation: 5.0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            children: [
                              Center(
                                child: Checkbox(
                                  value: ds["late"],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      Map<String, dynamic> messageInfoMap = {
                                        "Note": ds["Note"],
                                        "id": ds["id"],
                                        "late": value!,
                                      };
                                      DatabaseMethods().updateLastNoteSend(
                                          ds["id"], messageInfoMap, id);
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  ds["Note"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0),
                                ),
                              ),
                              SizedBox(
                                width: 80.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  DatabaseMethods().deleteNote(ds["id"], id);
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.blue,
                                  size: 28.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  doThisOnLaunch() async {
    await getMyInfoFromSharedPreference();
    userstream = await DatabaseMethods().getNote(id);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    doThisOnLaunch();
  }

  Stream? userstream;
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ToDo List",
          style: TextStyle(
              color: Colors.black, fontFamily: 'Pacifico', fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPage()));
        },
        child: Icon(Icons.add),
      ),
      body: Snacks(),
    );
  }
}
