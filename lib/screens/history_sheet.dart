import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/date.dart';

class HistorySheet extends StatelessWidget {
  const HistorySheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
        child: Scaffold(
            body: MediaQuery.of(context).orientation==Orientation.portrait?  CustomScrollView(
      slivers: [
        
        SliverFillRemaining(
          hasScrollBody: false,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 150.h,
                    width: double.infinity.w,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 300.w,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 40.h,
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
                                weight: FontWeight.w700,
                                size: 18,
                              ),
                              Multi(
                                color: const Color.fromARGB(255, 19, 14, 85),
                                subtitle: 'SHEET OF Mi 171 HEL (KAZAN)',
                                weight: FontWeight.w700,
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
                    height: 60.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Multi(
                                color: const Color.fromARGB(255, 4, 17, 65),
                                subtitle: 'Inspection List',
                                weight: FontWeight.w500,
                                size: 20),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 350.w,
                    height: 420.h,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '1.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '2.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '3.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '4.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '5.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '6.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '7.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '8.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '9.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '10.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '11.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '12.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '13.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '14.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '15.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '16.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '17.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Date(),
                                Button(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
                                      subtitle: 'History Sheet',
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
                                height: 40.h,
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
                   Padding(
                    padding:const EdgeInsets.symmetric(vertical: 3),
                    child: Divider(
                      thickness: 0.5.w,
                      color: Color.fromARGB(255, 4, 17, 65),
                    ),
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 60.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Multi(
                                color: const Color.fromARGB(255, 4, 17, 65),
                                subtitle: 'Inspection List',
                                weight: FontWeight.w500,
                                size: 12),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 350.w,
                    height: 420.h,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '1.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '2.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '3.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '4.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '5.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '6.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                               Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '7.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '8.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '9.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '10.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '11.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '12.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '13.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '14.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '15.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '16.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 0, 49, 92),
                                        subtitle: '17.',
                                        weight: FontWeight.w500,
                                        size: 18)),
                                 Datelandsacape(),
                                Buttonlandscape(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
                                      subtitle: 'History Sheet',
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
