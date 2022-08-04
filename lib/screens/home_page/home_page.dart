import 'package:flutter/material.dart';
import 'package:project/screens/start_now/start_now.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              Container(decoration: const BoxDecoration(shape: BoxShape.circle), width: 170, height: 170,clipBehavior: Clip.antiAliasWithSaveLayer,child: Image.asset("Capture.PNG",),),
              const SizedBox(height:10),
              const Text('Quiz Time',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30, color: Color(0xff32167C)),),
              const SizedBox(height:20),
              Text('Lets Start Our Journey !',style: TextStyle(fontSize: 25, color: Colors.purple[600])),
              const SizedBox(height:50),

              Container(
                width: 230,height: 60,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)),color: Colors.deepPurple[400],),
                child: MaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const startnow(), ));
                },
                  child: const Text('Start Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)
                  ,),
              ),
              const SizedBox(height:20),
              Container(
                width: 230,height: 60,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)),color: Colors.deepPurple[400],),
                child: MaterialButton(onPressed: () {},
                  child: const Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)
                  ,),
              ),
              const Expanded(child: SizedBox()),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.whatsapp,color: Colors.deepPurple,),
                Text('Contact us on 01026635361',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)
              ],),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Row(children: [
                    Icon(Icons.facebook,color: Colors.deepPurple,),
                    Text('QuizTime@yahoo.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)
                  ],),
                  Expanded(child: SizedBox()),
                  Row(children: [
                    Icon(Icons.mail,color: Colors.deepPurple,),
                    Text('QuizTime@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),)
                  ],),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}