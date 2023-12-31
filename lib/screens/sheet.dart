import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/update_sheet.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/date_pick.dart';
import 'package:sign_up_page_2/widgets/table.dart';
import 'package:sign_up_page_2/widgets/tabled.dart';

class Sheet extends StatefulWidget {
  Sheet({
    super.key,
  });

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  // String date = '';
  // String time = '';
  DateTime selectedDate = DateTime.now();
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
        child: Scaffold(
      body: MediaQuery.of(context).orientation==Orientation.portrait? CustomScrollView(
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
                    Container(
                      width: double.infinity.w,
                      height: 120.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Multi(
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                      subtitle: 'Inspection Date',
                                      weight: FontWeight.w500,
                                      size: 18),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.5),
                                        child: Container(
                                          height: 39.5.h,
                                          width: 139.5.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Multi(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                subtitle:
                                                    "${selectedDate.toLocal()}"
                                                        .split(' ')[0],
                                                weight: FontWeight.w500,
                                                size: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Multi(
                                        color: const Color.fromARGB(
                                            255, 175, 175, 175),
                                        subtitle: 'Date',
                                        weight: FontWeight.w500,
                                        size: 12)
                                  ],
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    height: 50.h,
                                    width: 30.w,
                                    child: IconButton(
                                      onPressed: () {
                                        Future<void> _selectDate(
                                            BuildContext context) async {
                                          final DateTime? picked =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: selectedDate,
                                                  firstDate: DateTime(1990, 1),
                                                  lastDate: DateTime(2101));
                                          if (picked != null &&
                                              picked != selectedDate) {
                                            setState(() {
                                              selectedDate = picked;
                                            });
                                          }
                                        }

                                        _selectDate(context);
                                      },
                                      
                                      icon: Icon(Icons.calendar_month),
                                      iconSize: 40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 4, 17, 65),
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
                      height: 250.h,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TableDataContainer22(no: '1', dueAt: '300hrs/6Months',),
                              TableDataContainer22(no: '2', dueAt: '200hrs/6Months',),
                              TableDataContainer22(no: '3', dueAt: '00hrs/6Months',),
                              TableDataContainer22(no: '4', dueAt: '3500hrs/6Months',)
                            ],
                          ),
                        ),
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
      // LANDSCAPE MODE
      // LANDSCAPE MODE
      
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
                                  weight: FontWeight.w600,
                                  size: 14,
                                ),
                                Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'SHEET OF Mi 171 HEL (KAZAN)',
                                  weight: FontWeight.w600,
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
                    Container(
                      width: double.infinity.w,
                      height: 150.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Multi(
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                      subtitle: 'Inspection Date',
                                      weight: FontWeight.w500,
                                      size: 14),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.5),
                                        child: Container(
                                          height: 39.5.h,
                                          width: 139.5.w,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Multi(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                subtitle:
                                                    "${selectedDate.toLocal()}"
                                                        .split(' ')[0],
                                                weight: FontWeight.w500,
                                                size: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Multi(
                                        color: const Color.fromARGB(
                                            255, 175, 175, 175),
                                        subtitle: 'Date',
                                        weight: FontWeight.w500,
                                        size: 10)
                                  ],
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Container(
                                    height: 50.h,
                                    width: 30.w,
                                    child: IconButton(
                                      onPressed: () {
                                        Future<void> _selectDate(
                                            BuildContext context) async {
                                          final DateTime? picked =
                                              await showDatePicker(
                                                  context: context,
                                                  initialDate: selectedDate,
                                                  firstDate: DateTime(1990, 1),
                                                  lastDate: DateTime(2101));
                                          if (picked != null &&
                                              picked != selectedDate) {
                                            setState(() {
                                              selectedDate = picked;
                                            });
                                          }
                                        }

                                        _selectDate(context);
                                      },
                                      
                                      icon: Icon(Icons.calendar_month),
                                      iconSize: 40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 4, 17, 65),
                    ),
                    Multi(
                        color: const Color.fromARGB(255, 4, 17, 65),
                        subtitle: 'Engine',
                        weight: FontWeight.w600,
                        size: 14),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 250.h,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TableDataContainer2(no: '1', dueAt: '300hrs/6Months',),
                              TableDataContainer2(no: '2', dueAt: '200hrs/6Months',),
                              TableDataContainer2(no: '3', dueAt: '00hrs/6Months',),
                              TableDataContainer2(no: '4', dueAt: '3500hrs/6Months',)
                            ],
                          ),
                        ),
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
