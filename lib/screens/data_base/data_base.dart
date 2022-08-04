import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/home_page/home_page.dart';
import '../start_now/start_now.dart';

class dataBase extends StatefulWidget {
  @override
  State<dataBase> createState() => _dataBaseState();
}

class _dataBaseState extends State<dataBase> {
  late int point;
   int? q1select=5 ;
   int? q2select=5 ;

  @override
  void initState() {
    point = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Row(
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff32167C)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => startnow(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 20,
                          color: Colors.white,
                        ))),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Database Challenges',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xff32167C)),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Expanded(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[200],
                ),
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "What is the full form of DBMS?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff32167C)),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: q1select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q1select = value;
                              });
                            },
                          ),
                          Text('Data of Binary Management System'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: q1select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q1select = value;
                              });
                            },
                          ),
                          Text('Database Management System'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: q1select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q1select = value;
                              });
                            },
                          ),
                          Text('Database Management Service'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 3,
                            groupValue: q1select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q1select = value;
                              });
                            },
                          ),
                          Text('Data Backup Management System'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Expanded(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[200],
                ),
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Who created the first DBMS ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff32167C)),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: q2select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q2select = value;
                              });
                            },
                          ),
                          Text('Edgar Frank Codd'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: q2select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q2select = value;
                              });
                            },
                          ),
                          Text('Charles Bachman'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: q2select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q2select = value;
                              });
                            },
                          ),
                          Text('Charles Babbage'),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 3,
                            groupValue: q2select,
                            activeColor: Colors.blue,
                            onChanged: (int? value) {
                              setState(() {
                                q2select = value;
                              });
                            },
                          ),
                          Text('Sharon B. Codd'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 130,height: 40,
          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)),color: Colors.deepPurple[400],),
          child: MaterialButton(onPressed: ()  async {
            if (q1select == 1){
              point++;
            }
            if (q2select == 1){
              point++;
            }
            await AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              headerAnimationLoop: false,
              animType: AnimType.TOPSLIDE,
              title: 'Results',
              desc: 'You Got $point points',
              onDissmissCallback: (type) {
                debugPrint('Dialog Dissmiss from callback $type');
              },
              btnOkOnPress: () {},
            ).show();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homepage(),
                ));
          },
            child: const Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
            ,),
        ),
      ]),
    ));
  }
}
