import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';





class PhoneAuthScreen extends StatefulWidget {
  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController smsCodeController = TextEditingController();
  String verificationId = "";

  Future<void> verifyPhoneNumber() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    verificationCompleted(PhoneAuthCredential credential) async {
      // Automatically verify the code if possible
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      
    }

    verificationFailed(FirebaseAuthException e) {
      // Handle verification failure
      print("Verification failed: ${e.code}");
    }

    codeSent(String verificationId, int? resendToken) {
      // Save the verification ID for later use
      this.verificationId = verificationId;
    }

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumberController.text,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-retrieve timed out
        },
      );
    } catch (e) {
      // Handle errors here
      print("Error sending code: $e");
    }
  }

  Future<void> verifySMSCode() async {
    final PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCodeController.text,
    );

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      // Handle the authenticated user as needed
    } catch (e) {
      // Handle errors here
      print("Error verifying code: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone Authentication Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: "Enter Phone Number"),
            ),
            ElevatedButton(
              onPressed: verifyPhoneNumber,
              child: Text("Send Code"),
            ),
            TextFormField(
              controller: smsCodeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter SMS Code"),
            ),
            ElevatedButton(
              onPressed: verifySMSCode,
              child: Text("Verify Code"),
            ),
          ],
        ),
      ),
    );
  }
}
