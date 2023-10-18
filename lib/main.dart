import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_page_2/screens/login_screen.dart';
import 'package:sign_up_page_2/screens/sign_up_screen.dart';
import 'package:sign_up_page_2/splashscreen.dart';
import 'package:sign_up_page_2/statemaneger/Provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) => Provider1(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),

              home: MyHomePage(),
              //SplashScreen(),
            ),
          );
        });
  }
}

// class MyHomePage1 extends StatefulWidget {
//   const MyHomePage1({
//     super.key,
//   });

//   @override
//   State<MyHomePage1> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage1> {
//   @override
//   Widget build(BuildContext context) {
//     //final Provider11 = Provider.of<Provider1>(context);
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         title: const Text(
//           "this is home page",
//           style: TextStyle(
//             color: Color.fromARGB(255, 255, 255, 255),
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.home,
//               color: Color.fromARGB(255, 255, 255, 255),
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: NetworkImage(
//                   "https://media.istockphoto.com/id/1183064398/vector/abstract-design-with-geometric-shapes-trendy-orange-gradient.jpg?s=612x612&w=0&k=20&c=c10LW7fOtb-nr8nhK6sXKilI_552AD0g91FtJOVGQd0="),
//               fit: BoxFit.fill),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(10, 200, 10, 200),
//           child: Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(15),
//                 ),
//                 image: DecorationImage(
//                     image: NetworkImage(
//                         'https://media.istockphoto.com/id/1418996428/vector/abstract-blurred-background-defocused-orange-gradient.jpg?s=612x612&w=0&k=20&c=Dyd6HM6ZkUcobkuehIooHTNYR_3tj9jLTIcPgfMxJ_M='))),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>  LoginPage()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color.fromARGB(255, 255, 8, 0),
//                     ),
//                     child: const Text(
//                       'LOGIN',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 14, 13, 13),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SignUpPage()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color.fromARGB(255, 255, 174, 0),
//                     ),
//                     child: const Text(
//                       'SIGN UP',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 14, 13, 13),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
