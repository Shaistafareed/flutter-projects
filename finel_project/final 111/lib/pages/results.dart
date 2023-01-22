import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ShowAllRecord extends StatefulWidget {
  const ShowAllRecord({Key? key}) : super(key: key);

  @override
  State<ShowAllRecord> createState() => _ShowAllRecordState();
}

class _ShowAllRecordState extends State<ShowAllRecord> {
  @override
  User? current = FirebaseAuth.instance.currentUser;
  List<dynamic> total = [];
  List<dynamic> right = [];
  getdata() async {
    await FirebaseFirestore.instance
        .collection("mytries")
        .doc(current?.uid)
        .collection('data')
        .get()
        .then((value) {
      for (int i = 0; i < value.docs.length; i++)
        setState(() {
          total.add(value.docs[i].get('all'));
          right.add(value.docs[i].get('correct'));
        });
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
    print(total);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text(
            "All Results",
            style: TextStyle(color: Colors.black),
          ),
          bottom: const TabBar(
            tabs: [Tab(text: 'Online'), Tab(text: 'Offline')],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: total.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "[${index + 1}]    ${right[index].toString()} Right Out Of ${total[index].toString()}",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: total.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "[${index + 1}]    ${right[index].toString()} Right Out Of ${total[index].toString()}",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
