import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TableText extends StatelessWidget {
  String? text;
  TableText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: Colors.black,
            
              fontSize: 15.sp,
              fontWeight: FontWeight.w500),
        ),
        textAlign: TextAlign.center,
      ),
    );
    
  }
}
class TableTextLandscape extends StatelessWidget {
  String? text1;
  TableTextLandscape({super.key,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text1!,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
              color: Colors.black,
            
              fontSize: 10.sp,
              fontWeight: FontWeight.w500),
        ),
        textAlign: TextAlign.center,
      ),
    );
    
  }
}
