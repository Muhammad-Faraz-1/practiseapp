import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';

class TableDataContainer2 extends StatelessWidget {
  String? no;
  String? dueAt;
  TableDataContainer2({super.key, required this.no, required this.dueAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        child: Center(
                          child: Multi(
                              color: Colors.black,
                              subtitle: '${no}',
                              weight: FontWeight.normal,
                              size: 10),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 20.h,
                        width: 70.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Due At",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                         width: 70.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Auth",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                         width: 200.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Description",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 70.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Status",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 70.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Action",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
width: 70.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Technician",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 70.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "QCI",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                    ],
                  ),
                 
                  Row(
                    children: [
                        Container(
                            height: 30,
                            width: 30,
                          
                          ),
                          SizedBox(width: 5.w,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 30,
                              width: 70.w,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Center(
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: '${dueAt}',
                                    weight: FontWeight.normal,
                                    size: 7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 70.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Authentication",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        // height: 80.h,
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Multi(
                                color: Colors.black,
                                subtitle:
                                    "adatatdatdatdtadtadtdatdatdatdtadtadtadtdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdatdtadtadtad",
                                weight: FontWeight.normal,
                                size: 7),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                      
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                       
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      
                    ],
                  ),
                    Row(
                    children: [
                        Container(
                            height: 30,
                            width: 30,
                          
                          ),
                          SizedBox(width: 5.w,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 30,
                              width: 70.w,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Center(
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: '${dueAt}',
                                    weight: FontWeight.normal,
                                    size: 7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 70.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Authentication",
                            weight: FontWeight.normal,
                            size: 7),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        // height: 80.h,
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Multi(
                                color: Colors.black,
                                subtitle:
                                    "adatatdatdatdtadtadtdatdatdatdtutttttttttttttttttttttttttttttttttxrrrrrrrrrrrrrrrrrrrrrrrrrstrxxxxxxxxxxxxxxxxxxxxxxxxxxxxxtwwwwwwwwwwwwwwwwwwttttttttttttttttttsadtadtadtdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdatdtadtadtad",
                                weight: FontWeight.normal,
                                size: 7),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                      
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                       
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 70.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class TableDataContainer22 extends StatelessWidget {
  String? no;
  String? dueAt;
  TableDataContainer22({super.key, required this.no, required this.dueAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        child: Center(
                          child: Multi(
                              color: Colors.black,
                              subtitle: '${no}',
                              weight: FontWeight.bold,
                              size: 13),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 10.h,
                        width: 100.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Due At",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                         width: 100.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Auth",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                         width: 200.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Description",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 100.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Status",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 100.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Action",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
width: 100.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "Technician",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 100.w,
                        child: Multi(
                            color: Colors.grey,
                            subtitle: "QCI",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                    ],
                  ),
                 
                  Row(
                    children: [
                        Container(
                            height: 30,
                            width: 30,
                          
                          ),
                          SizedBox(width: 5.w,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 30,
                              width: 100.w,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Center(
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: '${dueAt}',
                                    weight: FontWeight.bold,
                                    size: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 100.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Authentication",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        // height: 80.h,
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Multi(
                                color: Colors.black,
                                subtitle:
                                    "adatatdatdatdtadtadtdatdatdatdtadtadtadtdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdatdtadtadtad",
                                weight: FontWeight.bold,
                                size: 10),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                      
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                       
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      
                    ],
                  ),
                    Row(
                    children: [
                        Container(
                            height: 30,
                            width: 30,
                          
                          ),
                          SizedBox(width: 5.w,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              height: 30,
                              width: 100.w,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Center(
                                child: Multi(
                                    color: Colors.black,
                                    subtitle: '${dueAt}',
                                    weight: FontWeight.bold,
                                    size: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 100.w,
                        child: Multi(
                            color: Colors.black,
                            subtitle: "Authentication",
                            weight: FontWeight.bold,
                            size: 10),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        // height: 80.h,
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Multi(
                                color: Colors.black,
                                subtitle:
                                    "adatatdatdatdtadtadtdatdatdatdtutttttttttttttttttttttttttttttttttxrrrrrrrrrrrrrrrrrrrrrrrrrstrxxxxxxxxxxxxxxxxxxxxxxxxxxxxxtwwwwwwwwwwwwwwwwwwttttttttttttttttttsadtadtadtdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdtadtadtadtadtdatdatdatdatdtadtadtad",
                                weight: FontWeight.bold,
                                size: 10),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                      
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                       
                      ),
                      SizedBox(width: 5.w,),
                       Container(
                          height: 30,
                          width: 100.w,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
