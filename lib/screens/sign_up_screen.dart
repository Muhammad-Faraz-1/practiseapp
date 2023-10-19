import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/multi.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:sign_up_page_2/widgets/loader.dart';
import 'package:sign_up_page_2/widgets/shadow_text.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String dropdownvalue = 'QCI';

  String dropdownvalue1 = 'AF';

  // List of items in our dropdown menu
  var items = [
    'QCI',
    'Technician',
  ];

  var trade = [
    'AF',
    'ENG',
    'INST',
    'RT',
    'ELEC',
  ];

  final email = TextEditingController();

  final password = TextEditingController();

  final userName = TextEditingController();
  final contact = TextEditingController();

  final army = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 17, 65),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80.h,
                          width: 300.w,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    height: 40.h,
                                    width: 150.w,
                                    child: Image.asset('assets/logo.png')),
                                ShadowText(
                                    text: 'Registration',
                                    size: 25,
                                    color: Colors.red,
                                    weight: FontWeight.w500,
                                    shadowColor: Colors.white)
                              ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150.w,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Multi(
                                        color: Colors.white,
                                        subtitle: 'First Name',
                                        weight: FontWeight.w500,
                                        size: 15),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    TextFormField(
                                      controller: firstName,
                                      validator: (value) => value!.isEmpty
                                          ? 'First name cannot be blank'
                                          : null,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                      decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: 'Amir ',
                                        hintStyle: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ]),
                            ),
                            Container(
                              width: 150.w,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Multi(
                                        color: Colors.white,
                                        subtitle: 'Last Name',
                                        weight: FontWeight.w500,
                                        size: 15),
                                        SizedBox(
                                      height: 5.h,
                                    ),
                                    TextFormField(
                                       controller: lastName,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                      decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: ' Hassan',
                                        hintStyle: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'User Name',
                                  weight: FontWeight.w500,
                                  size: 15),
                                  SizedBox(
                                      height: 5.h,
                                    ),
                              TextFormField(
                                controller: userName,
                                validator: (value) => value!.isEmpty
                                    ? 'User name cannot be blank'
                                    : null,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'farazk12',
                                  hintStyle: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                              Multi(
                                  color: Colors.white,
                                  subtitle:
                                      'User name must not contain any spaces',
                                  weight: FontWeight.normal,
                                  size: 8)
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        // Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Multi(
                        //           color: Colors.white,
                        //           subtitle: 'Your Email',
                        //           weight: FontWeight.w500,
                        //           size: 15),
                        //       TextFormField(
                        //         controller: email,
                        //         validator: (value) => value!.isEmpty
                        //             ? 'email cannot be blank'
                        //             : null,
                        //         style: TextStyle(
                        //             color: Colors.white, fontSize: 15),
                        //         decoration: InputDecoration(
                        //           enabledBorder: const OutlineInputBorder(
                        //             borderSide: BorderSide(color: Colors.white),
                        //           ),
                        //           focusedBorder: const OutlineInputBorder(
                        //               borderSide:
                        //                   BorderSide(color: Colors.white)),
                        //           border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //           ),
                        //           hintText: 'abc@gmail.com',
                        //           hintStyle:
                        //               const TextStyle(color: Colors.white),
                        //         ),
                        //       ),
                        //     ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Your Phone Number',
                                  weight: FontWeight.w500,
                                  size: 15),
                                  SizedBox(
                                      height: 5.h,
                                    ),
                              TextFormField(
                                controller: contact,
                                validator: (value) => value!.isEmpty
                                    ? 'Phone Number cannot be blank'
                                    : null,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: '+92 222 2222222',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Set Password',
                                  weight: FontWeight.w500,
                                  size: 15),
                                  SizedBox(
                                      height: 5.h,
                                    ),
                              TextFormField(
                                controller: password,
                                validator: (value) => value!.isEmpty
                                    ? 'password cannot be blank'
                                    : null,
                                obscureText: true,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: '**********',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'User Role:',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                      height: 5.h,
                                    ),
                              Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: DropdownButton(
                                          dropdownColor: const Color.fromARGB(
                                              255, 4, 17, 65),
                                          isExpanded: true,

                                          // Initial Value
                                          value: dropdownvalue,

                                          // Down Arrow Icon
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Trade:',
                                  weight: FontWeight.w500,
                                  size: 15),
                                  SizedBox(
                                      height: 5.h,
                                    ),
                              Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromARGB(255, 4, 17, 65),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: DropdownButton(
                                          dropdownColor: const Color.fromARGB(
                                              255, 4, 17, 65),
                                          isExpanded: true,

                                          // Initial Value
                                          value: dropdownvalue1,

                                          // Down Arrow Icon
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: trade.map((String trade) {
                                            return DropdownMenuItem(
                                              value: trade,
                                              child: Text(
                                                trade,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue1 = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Multi(
                                  color: Colors.white,
                                  subtitle: 'Army Number:',
                                  weight: FontWeight.w500,
                                  size: 15),
                                  SizedBox(
                                      height: 5.h,
                                    ),
                              TextFormField(
                                controller: army,
                                validator: (value) => value!.isEmpty
                                    ? 'Email cannot be blank'
                                    : null,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 230.h,
                          width: 350.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // showDialog(
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return Popup();
                                  //   },
                                  // );
                                },
                                child: Container(
                                  height: 180.h,
                                  width: double.infinity.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Multi(
                                          color: Colors.black,
                                          subtitle: 'FingerPrint Verification',
                                          weight: FontWeight.w500,
                                          size: 15),
                                      Image.asset('assets/182486.png')
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Provider11.loginState == false
                                    ? Container(
                                        height: 35.h,
                                        width: 120.w,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            
                                            if (_formKey.currentState!
                                                .validate()) {
                                              Provider11.emailSignin(
                                                context,
                                                
                                                password.text,
                                                dropdownvalue,
                                                dropdownvalue1,
                                                userName.text,
                                                army.text,
                                                contact.text,
                                                firstName.text,
                                                lastName.text,
                                              );
                                            }
                                            print("working");
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 151, 174, 217),
                                              side: BorderSide(
                                                  width: 800.w,
                                                  color: Colors.black),
                                              shape: RoundedRectangleBorder(
                                                  //to set border radius to button
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))),
                                          child: const Text(
                                            'Register',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Loader(),
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
          ),
        ),
      ),
    );
  }
}
