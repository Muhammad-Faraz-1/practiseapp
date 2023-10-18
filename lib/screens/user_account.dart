import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/screens/first_page.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: MediaQuery.of(context).orientation==Orientation.portrait?
              SingleChildScrollView(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                         Container(
                          height: 130.h,
                           child: Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                            Multi(
                                color: const Color.fromARGB(255, 0, 49, 92),
                                subtitle: 'Inspector Name',
                                weight: FontWeight.w500,
                                size: 18),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Expanded(
                                          flex: 1,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              // filled: true,
                                              // fillColor:
                                              //     const Color.fromARGB(255, 207, 220, 244),
                                              enabledBorder: const OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                              ),
                                              focusedBorder: const OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              hintText: 'Ashraf',
                                              hintStyle: const TextStyle(
                                                  color:
                                                      Color.fromARGB(255, 117, 111, 111),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Multi(
                                          color: const Color.fromARGB(255, 0, 49, 92),
                                          subtitle: 'First Name',
                                          weight: FontWeight.w300,
                                          size: 13)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Expanded(
                                          flex: 1,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              // filled: true,
                                              // fillColor:
                                              //     const Color.fromARGB(255, 207, 220, 244),
                                              enabledBorder: const OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                              ),
                                              focusedBorder: const OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              hintText: 'Ashraf',
                                              hintStyle: const TextStyle(
                                                  color:
                                                      Color.fromARGB(255, 117, 111, 111),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Multi(
                                          color: const Color.fromARGB(255, 0, 49, 92),
                                          subtitle: 'Last Name',
                                          weight: FontWeight.w300,
                                          size: 13),
                                    ],
                                  ),
                                ),
                              ],
                            ),],),
                         ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 270.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Inspector Role',
                                    weight: FontWeight.w500,
                                    size: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      
                                    ),
                                  ),
                                ),
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Trade',
                                    weight: FontWeight.w500,
                                    size: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                     
                                    ),
                                  ),
                                ),
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Army No',
                                    weight: FontWeight.w500,
                                    size: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                          height: 50.h,
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 130.w,
                                height: 40.h,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  FirstPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 231, 239, 254),
                                    ),
                                    child: Multi(
                                        color: const Color.fromARGB(255, 4, 17, 65),
                                        subtitle: 'UPDATE',
                                        weight: FontWeight.w600,
                                        size: 15)),
                              ),
                              Container(
                                width: 130.w,
                                height: 40.h,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  FirstPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 0, 46, 86),
                                    ),
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 255, 255, 255),
                                        subtitle: 'Save',
                                        weight: FontWeight.w600,
                                        size: 15)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                            width: 300.w,
                          ),
                          Container(
                              height: 40.h,
                              width: 100.w,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'Back',
                                  weight: FontWeight.w500,
                                  size: 15,
                                ),
                              )),
                        ],
                      ),
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
                                      subtitle: 'User Account',
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
              ):

              //LANDSCAPE MODE
              //LANDSCAPE MODE
              SingleChildScrollView(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                         Container(
                          height: 160.h,
                           child: Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                            Multi(
                                color: const Color.fromARGB(255, 0, 49, 92),
                                subtitle: 'Inspector Name',
                                weight: FontWeight.w500,
                                size: 14),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            // filled: true,
                                            // fillColor:
                                            //     const Color.fromARGB(255, 207, 220, 244),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            hintText: 'Ashraf',
                                            hintStyle: const TextStyle(
                                                color:
                                                    Color.fromARGB(255, 117, 111, 111),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      Multi(
                                          color: const Color.fromARGB(255, 0, 49, 92),
                                          subtitle: 'First Name',
                                          weight: FontWeight.w300,
                                          size: 12)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            // filled: true,
                                            // fillColor:
                                            //     const Color.fromARGB(255, 207, 220, 244),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            hintText: 'Ashraf',
                                            hintStyle: const TextStyle(
                                                color:
                                                    Color.fromARGB(255, 117, 111, 111),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      Multi(
                                          color: const Color.fromARGB(255, 0, 49, 92),
                                          subtitle: 'Last Name',
                                          weight: FontWeight.w300,
                                          size: 12),
                                    ],
                                  ),
                                ),
                              ],
                            ),],),
                         ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 350.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Inspector Role',
                                    weight: FontWeight.w500,
                                    size: 12),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      
                                    ),
                                  ),
                                ),
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Trade',
                                    weight: FontWeight.w500,
                                    size: 12),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                     
                                    ),
                                  ),
                                ),
                                Multi(
                                    color: const Color.fromARGB(255, 0, 49, 92),
                                    subtitle: 'Army No',
                                    weight: FontWeight.w500,
                                    size: 12),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // filled: true,
                                      // fillColor:
                                      //     const Color.fromARGB(255, 207, 220, 244),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                          height: 50.h,
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 110.w,
                                height: 40.h,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  FirstPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 231, 239, 254),
                                    ),
                                    child: Multi(
                                        color: const Color.fromARGB(255, 4, 17, 65),
                                        subtitle: 'UPDATE',
                                        weight: FontWeight.w600,
                                        size: 12)),
                              ),
                              Container(
                                width: 110.w,
                                height: 40.h,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  FirstPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 0, 46, 86),
                                    ),
                                    child: Multi(
                                        color:
                                            const Color.fromARGB(255, 255, 255, 255),
                                        subtitle: 'Save',
                                        weight: FontWeight.w600,
                                        size: 12)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                            width: 300.w,
                          ),
                          Container(
                              height: 60.h,
                              width: 100.w,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Multi(
                                  color: const Color.fromARGB(255, 19, 14, 85),
                                  subtitle: 'Back',
                                  weight: FontWeight.w500,
                                  size: 12,
                                ),
                              )),
                        ],
                      ),
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
                                      subtitle: 'User Account',
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
            
          ),);
  }
}





class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding:  EdgeInsets.only(top: 300),
        child: SizedBox(
                                  
                                  
                                 
                                    child: TextFormField(
                                    
                                   
                                      decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white)),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        hintText: 'Imran',
                                        hintStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 117, 111, 111),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
      ),
    );
  }
}