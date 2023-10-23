import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/sheet.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';

class FillInspection extends StatelessWidget {
  const FillInspection({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
      child: Scaffold(
          body:MediaQuery.of(context).orientation==Orientation.portrait?  CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              height: double.infinity.h,
              width: double.infinity.w,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                            height: 40.h,
                            width: 85.w,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Multi(
                                color: Color.fromARGB(255, 19, 14, 85),
                                subtitle: 'Back',
                                weight: FontWeight.w500,
                                size: 18,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            height: 400.h,
                            width: 300.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Multi(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    subtitle: 'Select Helicoptor For Inspection',
                                    weight: FontWeight.w500,
                                    size: 18),
                                SizedBox(
                                  height: 15.h,
                                  width: 300.w,
                                ),
                                Container(
                                  height: 80.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 51, 101, 145)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 8,
                                          offset: Offset(-1,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Sheet()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 0, 49, 92),
                                          side: BorderSide(
                                              width: 800.w, color: Colors.black),
                                          shape: RoundedRectangleBorder(
                                              //to set border radius to button
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Multi(
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                          subtitle: 'Bell 412 Sheet',
                                          weight: FontWeight.bold,
                                          size: 20)),
                                ),
                                SizedBox(
                                  height: 15.h,
                                  width: 300.w,
                                ),
                                Container(
                                  height: 80.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 51, 101, 145)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 8,
                                          offset: Offset(-1,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                   Sheet()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 0, 49, 92),
                                          side: BorderSide(
                                              width: 800.w, color: Colors.black),
                                          shape: RoundedRectangleBorder(
                                              //to set border radius to button
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Multi(
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                          subtitle: 'Mi17 Sheet',
                                          weight: FontWeight.bold,
                                          size: 20)),
                                ),
                                SizedBox(
                                  height: 15.h,
                                  width: 300.w,
                                ),
                                Container(
                                  height: 80.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(255, 51, 101, 145)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 8,
                                          offset: Offset(-1,
                                              5), // changes position of shadow
                                        ),
                                      ]),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  Sheet()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        side: BorderSide(
                                            width: 800.w, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Multi(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        subtitle: 'Puma SM Sheet',
                                        weight: FontWeight.bold,
                                        size: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        )
                      ],
                    ),
                     Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                        height: 40.h,
                                        width: 80.w,
                                        child: Image.asset('assets/logo.png')),
                                  ),
                                  SizedBox(
                                    width: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Multi(
                                        color: const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: 'Fill Out Inspection Sheet',
                                        weight: FontWeight.w500,
                                        size: 15),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 0.7,
                              color: Color.fromARGB(255, 4, 17, 65),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          )
        ],
      ):
      //LANDSCAPE MODE
       //LANDSCAPE MODE
       CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              height: double.infinity.h,
              width: double.infinity.w,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                          height: 60.h,
                          width: 85.w,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Multi(
                              color: Color.fromARGB(255, 19, 14, 85),
                              subtitle: 'Back',
                              weight: FontWeight.w500,
                              size: 10,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Container(
                          height: 400.h,
                          width: 300.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Multi(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  subtitle: 'Select Helicoptor For Inspection',
                                  weight: FontWeight.w500,
                                  size: 12),
                              SizedBox(
                                height: 15.h,
                                width: 300.w,
                              ),
                              Container(
                                height: 80.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 51, 101, 145)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 8,
                                        offset: Offset(-1,
                                            5), // changes position of shadow
                                      ),
                                    ]),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 Sheet()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 0, 49, 92),
                                        side: BorderSide(
                                            width: 800.w, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Multi(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        subtitle: 'Bell 412 Sheet',
                                        weight: FontWeight.bold,
                                        size: 13)),
                              ),
                              SizedBox(
                                height: 15.h,
                                width: 300.w,
                              ),
                              Container(
                                height: 80.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 51, 101, 145)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 8,
                                        offset: Offset(-1,
                                            5), // changes position of shadow
                                      ),
                                    ]),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 Sheet()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 0, 49, 92),
                                        side: BorderSide(
                                            width: 800.w, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Multi(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        subtitle: 'Mi17 Sheet',
                                        weight: FontWeight.bold,
                                        size: 13)),
                              ),
                              SizedBox(
                                height: 15.h,
                                width: 300.w,
                              ),
                              Container(
                                height: 80.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 51, 101, 145)
                                            .withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 8,
                                        offset: Offset(-1,
                                            5), // changes position of shadow
                                      ),
                                    ]),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  Sheet()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 0, 49, 92),
                                      side: BorderSide(
                                          width: 800.w, color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: Multi(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      subtitle: 'Puma SM Sheet',
                                      weight: FontWeight.bold,
                                      size: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      )
                    ],
                  ),
                   Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                      height: 40.h,
                                      width: 80.w,
                                      child: Image.asset('assets/logo.png')),
                                ),
                                SizedBox(
                                  width: 20.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Multi(
                                      color: const Color.fromARGB(255, 0, 49, 92),
                                      subtitle: 'Fill Out Inspection Sheet',
                                      weight: FontWeight.w500,
                                      size: 11),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 0.7,
                            color: Color.fromARGB(255, 4, 17, 65),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      )
      ),
    );
  }
}
