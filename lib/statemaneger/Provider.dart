import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page_2/screens/first_page.dart';
import 'package:sign_up_page_2/screens/login_screen.dart';
import 'package:sign_up_page_2/widgets/loader.dart';

class Provider1 extends ChangeNotifier {
  bool _isDone = false;
  bool get isDone => _isDone;
  var dropdownvalue;
  var dropdownvalue1;

  SplashState() {
    // Simulate a 3-second delay before marking the splash screen as done
    Timer(Duration(seconds: 3), () {
      _isDone = true;
      notifyListeners();
    });
  }

//   String? changeValue(newValue) {
//     dropdownvalue = newValue!;
//     return dropdownvalue;
//   }
// String? changeValue1(newValue) {
//     dropdownvalue1 = newValue!;
//     return dropdownvalue1;
//   }
  int? indexx;

  // 0 == am
  // 1 == pm

  changeTime(int index) {
    indexx = index;
    notifyListeners();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? uid;
  String? userEmail;
  String? password;
  bool loginState = false;
  bool isLoading = false;
  isloadingtrue() {
    isLoading = true;
    notifyListeners();
  }

  isloadingfalse() {
    isLoading = false;
    notifyListeners();
  }

  changeStateTrue() {
    loginState = true;

    notifyListeners();
  }

  changeStateFalse() {
    loginState = false;

    notifyListeners();
  }

  Future emailSignin(
    BuildContext context,
    
    String password,
    String role,
    String trade,
    String userName,
    String army,
    String contact,
    String firstName,
    String lastName,
  ) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final FirebaseFirestore db = FirebaseFirestore.instance;
      await auth.createUserWithEmailAndPassword(
          email:userName+"@gmail.com" , password: password);
      final User? user1 = auth.currentUser;
      uid = user1!.uid;
      print("${uid}=====>uid");
      await db.collection('Role').doc(uid).set({
        "name": userName,
        "profile": "https://cdn-icons-png.flaticon.com/512/1077/1077012.png",
        "email": userName+"@gmail.com",
        "uid": user1.uid,
        "role": role,
        "trade": trade,
        "army": army,
        "contact": contact,
        "firstname": firstName,
        "lastname": lastName,
      });
      Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  LoginPage()));
      print("done");
    } catch (e) {
      // Fluttertoast.showToast(
      //     msg: e.toString(),
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.black,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
    notifyListeners();
  }

  Future<User?> signInWithEmailPassword(
      String userName1, String password, context) async {
    await Firebase.initializeApp();
    User? user;
    try {
      await changeStateTrue();
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email:  userName1+"@gmail.com",
        password: password,
      );
      user = userCredential.user;
      

      if (user != null) {
        await FirebaseFirestore.instance
            .collection('Role')
            .doc(user.uid)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
          if (documentSnapshot.exists) {
            Map<String, dynamic> data =
                documentSnapshot.data() as Map<String, dynamic>;
            uid = user!.uid;
            print(uid);
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()))
                ;
            
          } else {
            print('Document does not exist on the database');
          }
        });
        uid = user.uid;
        userEmail = user.email;
        print(uid);
        await changeStateFalse();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
      await changeStateFalse();
    }

    return user;
  }

  Future LogOut() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseAuth.instance.signOut();
    } else {
      throw UserNotLoggedInAuthException();
    }
  }

  // Future<User?> verifynumber() async {
  //   User? user;
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: '+92 ',
  //     verificationCompleted: (PhoneAuthCredential credential) {},
  //     verificationFailed: (FirebaseAuthException e) {},
  //     codeSent: (String verificationId, int? resendToken) {},
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  //   _verificationId = verificationId;
  //   return user;
  // }

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: '+92 324 2824117',
      verificationCompleted: (PhoneAuthCredential credential) {
        // Auto-retrieve the SMS code and sign in if possible.
      },
      verificationFailed: (FirebaseAuthException e) {
        // Handle the verification failure.
      },
      codeSent: (String verificationId, int? resendToken) {
        // Save the verification ID and resend token to use during code verification.
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-retrieve timed out.
      },
    );
  }
// PhoneAuthCredential credential = PhoneAuthProvider.credential(
//   verificationId: verificationId,
//   smsCode: smsCode,
// );

// UserCredential userCredential = await _auth.signInWithCredential(credential);
}

class UserNotLoggedInAuthException implements Exception {}
