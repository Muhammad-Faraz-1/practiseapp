import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {
  String? text;
  double? size;
  Color? color;
  FontWeight? weight;
  Color? shadowColor;
  ShadowText({super.key,required this.text,required this.size,required this.color,required this.weight,required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(
            fontSize: size!,
            color: color,
            fontWeight: weight!,
            shadows: [Shadow(
              color: shadowColor!,
              blurRadius: 5,
              
              offset: Offset(3,3)
            ),
            Shadow(
              color: shadowColor!,
              blurRadius: 7,
              
              offset: Offset(6,6)
            )
            ]),
      ),
    );
  }
}
class ShadowText2 extends StatelessWidget {
  String? text;
  double? size;
  Color? color;
  FontWeight? weight;
  Color? shadowColor;
  ShadowText2({super.key,required this.text,required this.size,required this.color,required this.weight,required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(
            fontSize: size!,
            color: color,
            fontWeight: weight!,
            shadows: [Shadow(
              color: shadowColor!,
              blurRadius: 5,
              
              offset: Offset(3,3)
            ),
            
            ]),
      ),
    );
  }
}
