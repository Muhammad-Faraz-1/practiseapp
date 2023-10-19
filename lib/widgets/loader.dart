import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          height: 20.h,
          width: 20.h,
          color: Colors.transparent,
          // child: SpinKitRotatingCircle(color: const Color.fromARGB(255, 255, 10, 10))),
        child: SpinKitSpinningLines(color: Colors.white),
        ),
      
    );
  }
}
