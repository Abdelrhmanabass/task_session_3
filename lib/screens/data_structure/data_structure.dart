import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page.dart';
import '../start_now/start_now.dart';

class dataStructure extends StatefulWidget {
  const dataStructure({Key? key}) : super(key: key);

  @override

  State<dataStructure> createState() => _dataStructureState();
}

class _dataStructureState extends State<dataStructure> {
  late int point;
  int? q1select=5 ;
  int? q2select=5 ;
  @override
  void initState() {
    point = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                    width: 90,
                  ),
                  Text(
                    'Data structure Challenges',
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
                          "Which of the following is not the type of queue?",
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
                            Text('Priority Queue'),
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
                            Text('Single_ended Queue'),
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
                            Text('Circular Queue'),
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
                            Text('Ordinary Queue'),
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
                          "Which of the following is a linear data structure ?",
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
                            Text('Array '),
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
                            Text('AVL Trees'),
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
                            Text('Binary Trees'),
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
                            Text('Graphs'),
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
            child: MaterialButton(onPressed: () async {
              if (q1select == 1){
                point++;
              }
              if (q2select == 0){
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
        ],

      ),
    );
  }
}
