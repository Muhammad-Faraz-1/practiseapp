import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/update_sheet.dart';
import 'package:sign_up_page_2/widgets/table.dart';

class VisitSheet extends StatelessWidget {
  const VisitSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:MediaQuery.of(context).orientation==Orientation.portrait?  CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 170.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 300.w,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 30.h,
                                  width: 85.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Multi(
                                      color:
                                          const Color.fromARGB(255, 19, 14, 85),
                                      subtitle: 'Back',
                                      weight: FontWeight.w500,
                                      size: 15,
                                    ),
                                  )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: '25 HRS INSPECTION CHECK ',
                                  weight: FontWeight.w600,
                                  size: 18,
                                ),
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'SHEET OF Mi 171 HEL (KAZAN)',
                                  weight: FontWeight.w600,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 4, 17, 65),
                      ),
                    ),
                    Multi(
                        color: const Color.fromARGB(255, 4, 17, 65),
                        subtitle: 'Engine',
                        weight: FontWeight.w600,
                        size: 20),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 380.h,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Table1(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UpdateSheet()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 46, 86),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 4, 17, 65),
                                subtitle: 'UPDATE',
                                weight: FontWeight.w400,
                                size: 15)),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 46, 86),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 4, 17, 65),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                subtitle: 'SUBMIT',
                                weight: FontWeight.w400,
                                size: 15))
                      ],
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
          )
        ],
      ):
      //LANDSCAPE MODE
      //LANDSCAPE MODE
      CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 300.w,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 60.h,
                                  width: 85.w,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Multi(
                                      color:
                                          const Color.fromARGB(255, 19, 14, 85),
                                      subtitle: 'Back',
                                      weight: FontWeight.w500,
                                      size: 12,
                                    ),
                                  )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: '25 HRS INSPECTION CHECK ',
                                  weight: FontWeight.w500,
                                  size: 14,
                                ),
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'SHEET OF Mi 171 HEL (KAZAN)',
                                  weight: FontWeight.w500,
                                  size: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 4, 17, 65),
                      ),
                    ),
                    Multi(
                        color: const Color.fromARGB(255, 4, 17, 65),
                        subtitle: 'Engine',
                        weight: FontWeight.w500,
                        size: 15),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 380.h,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Table1(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UpdateSheet()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 0, 46, 86),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 4, 17, 65),
                                subtitle: 'UPDATE',
                                weight: FontWeight.w400,
                                size: 12)),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 46, 86),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 4, 17, 65),
                                )),
                            child: Multi(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                subtitle: 'SUBMIT',
                                weight: FontWeight.w400,
                                size: 12))
                      ],
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
                                  size: 12),
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
          )
        ],
      )
    ));
  }
}
