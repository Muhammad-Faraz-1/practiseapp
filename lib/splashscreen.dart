import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/screens/main_page.dart';
import 'package:sign_up_page_2/widgets/shadow_text.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds:5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MainPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const splash(),
    );
    //FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GeeksForGeeks")),
//       body: Center(
//           child: Text(
//         "Home page",
//         textScaleFactor: 2,
//       )),
//     );
//   }
// }
class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
       
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 4, 17, 65),
          Color.fromARGB(255, 112, 10, 10)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              height: 100.h,
              width: 150.w,
              child: Image.asset('assets/logo.png')),
            ShadowText(text: 'Welcome to', size: 25, color: Color.fromARGB(255, 255, 255, 255), weight:FontWeight.w400, shadowColor: Color.fromARGB(255, 155, 13, 23)),
            ShadowText(text: 'Inspection App', size: 25, color: Color.fromARGB(255, 255, 255, 255), weight:FontWeight.w400, shadowColor: Color.fromARGB(255, 155, 13, 23)),

            // const Text('Welcome to',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25,fontWeight: FontWeight.w400),),
            // const Text('Inspection App',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25,fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}
