import 'package:flutter/material.dart';
import 'package:project/screens/flutter/flutter.dart';
import 'package:project/screens/home_page/home_page.dart';
import 'package:project/screens/network/network.dart';
import '../data_base/data_base.dart';
import '../data_structure/data_structure.dart';

class startnow extends StatelessWidget {
  const startnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff32167C)),
                      child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(), ));},
                          icon:const Icon(Icons.arrow_back_rounded,size: 20,color: Colors.white,))),
                  SizedBox(width: 130,),
                  Text('Challenges',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xff32167C)),)
                ],
              ), // appbar
              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    MaterialButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => dataStructure(),));
                    },
                      child: Container(alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.indigo[200],
                      borderRadius: BorderRadius.circular(50),),
                       width: 180,height: 180,child: const Text('data Structure',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
                    ),

                    const Expanded(child: SizedBox()),

                    MaterialButton(onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const network(),));
                    },
                      child: Container(alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.indigo[200],
                      borderRadius: BorderRadius.circular(50),),
                       width: 180,height: 180,child: const Text('Network',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => const fluterr(),));
                      },
                      child: Container(alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.indigo[200],
                          borderRadius: BorderRadius.circular(50),),
                        width: 180,height: 180,child: const Text('Flutter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
                    ),

                    const Expanded(child: SizedBox()),

                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>  dataBase(),),);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.indigo[200],
                          borderRadius: BorderRadius.circular(50),),
                        width: 180,height: 180,child: const Text('Data Base',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

