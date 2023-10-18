import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:sign_up_page_2/multi.dart';

class OmniDatePicker extends StatelessWidget {
  const OmniDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Multi(
                color: const Color.fromARGB(255, 19, 14, 85),
                subtitle: 'Back',
                weight: FontWeight.w500,
                size: 15,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? dateTime = await showOmniDateTimePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate:
                      DateTime(1600).subtract(const Duration(days: 3652)),
                  lastDate: DateTime.now().add(
                    const Duration(days: 3652),
                  ),
                  is24HourMode: false,
                  isShowSeconds: false,
                  minutesInterval: 1,
                  secondsInterval: 1,
                  isForce2Digits: true,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  constraints: const BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 650,
                  ),
                  transitionBuilder: (context, anim1, anim2, child) {
                    return FadeTransition(
                      opacity: anim1.drive(
                        Tween(
                          begin: 0,
                          end: 1,
                        ),
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 200),
                  barrierDismissible: true,
                  selectableDayPredicate: (dateTime) {
                    // Disable 25th Feb 2023
                    if (dateTime == DateTime(2023, 2, 25)) {
                      return false;
                    } else {
                      return true;
                    }
                  },
                );
                var date = dateTime.toString().substring(0,10);
                var time= dateTime.toString().substring(11,19);
                print(date);
                print(time);
                
              },
              child: const Text("Show DateTime Picker"),
            ),
            ElevatedButton(
              onPressed: () async {
                List<DateTime>? dateTimeList =
                    await showOmniDateTimeRangePicker(
                  context: context,
                  startInitialDate: DateTime.now(),
                  startFirstDate:
                      DateTime(1600).subtract(const Duration(days: 3652)),
                  startLastDate: DateTime.now().add(
                    const Duration(days: 3652),
                  ),
                  endInitialDate: DateTime.now(),
                  endFirstDate:
                      DateTime(1600).subtract(const Duration(days: 3652)),
                  endLastDate: DateTime.now().add(
                    const Duration(days: 3652),
                  ),
                  is24HourMode: false,
                  isShowSeconds: false,
                  minutesInterval: 1,
                  secondsInterval: 1,
                  isForce2Digits: true,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  constraints: const BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 650,
                  ),
                  transitionBuilder: (context, anim1, anim2, child) {
                    return FadeTransition(
                      opacity: anim1.drive(
                        Tween(
                          begin: 0,
                          end: 1,
                        ),
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 200),
                  barrierDismissible: true,
                  selectableDayPredicate: (dateTime) {
                    // Disable 25th Feb 2023
                    if (dateTime == DateTime(2023, 2, 25)) {
                      return false;
                    } else {
                      return true;
                    }
                  },
                );

                print("Start dateTime: ${dateTimeList?[0]}");
                print("End dateTime: ${dateTimeList?[1]}");
              },
              child: const Text("Show DateTime Range Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
