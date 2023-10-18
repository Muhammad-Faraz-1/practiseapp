import 'package:flutter/material.dart';
import 'package:sign_up_page_2/multi.dart';
class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    
          return Dialog(
            backgroundColor: const Color.fromARGB(255, 4, 17, 65),
            
            child: Container(
              height: 300,
              child:  Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Multi(color: Colors.white, subtitle: 'Confirm Identity', weight: FontWeight.w500, size: 25),
                    Image.asset('assets/182486.png',color: Colors.white),
                    TextButton(
                                      onPressed: () {
                                       Navigator.of(context).pop();
                                      },
                                      child: Multi(
                                          color: const Color.fromARGB(255, 255, 255, 255),
                                          subtitle: 'Verify',
                                          weight: FontWeight.w500,
                                          size: 18)),
                  ],
                ),
              ),
            ),
          );
        
  }
}