import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../home_page/home_page.dart';
import '../start_now/start_now.dart';

class network extends StatefulWidget {
  const network({Key? key}) : super(key: key);

  @override
  State<network> createState() => _networkState();
}

class _networkState extends State<network> {
  late int point;
  int? q1select=5 ;
  int? q2select=5 ;
  @override
  void initState() {
    point = 0;
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
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
                  width: 130,
                ),
                Text(
                  'Network Challenges',
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
                        "A program that provides software interface to hardware devices is called ?",
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
                          Text(' System Software'),
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
                          Text('Application Software'),
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
                          Text('Device Drivers'),
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
                          Text('All of the Above'),
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
                        "What Is a LAN ?",
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
                          Text('Line Area Network '),
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
                          Text('Linear area Network'),
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
                          Text('Local area Network'),
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
                          Text('Land area Network'),
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
            if (q1select == 2){
              point++;
            }
            if (q2select == 2){
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
          },child: const Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
            ,),
        ),
      ],
    ),
    );
  }
}
