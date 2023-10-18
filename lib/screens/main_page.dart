import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/screens/login_screen.dart';
import 'package:sign_up_page_2/screens/sign_up_screen.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/shadow_text.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
     final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 17, 65),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child:Container(
                color: Colors.transparent,
               child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100.h,
                  width: 150.w,
                  child: Image.asset('assets/logo.png')),
                            ShadowText(text: 'Welcome to', size: 30, color: Color.fromARGB(255, 255, 255, 255), weight:FontWeight.w400, shadowColor: Color.fromARGB(255, 155, 13, 23)),

                            ShadowText(text: 'Inspection App', size: 25, color: Color.fromARGB(255, 255, 255, 255), weight:FontWeight.w400, shadowColor: Color.fromARGB(255, 155, 13, 23)),

              Padding(
                padding: const EdgeInsets.fromLTRB(25, 150, 25, 5),
                child: Container(
                  height: 50.h,
                  width: double.infinity.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        side:  BorderSide(width: 800.w,color: Colors.black),
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'LogIn',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 17, 65),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
                child: Container(
                  height: 50.h,
                  width: double.infinity.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SignUpPage()),
                      );
                    },
                    style:ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        side:  BorderSide(width: 800.w,color: Colors.black),
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 17, 65),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),),
            )
          ],
        )
      ),
    );
  }
}
