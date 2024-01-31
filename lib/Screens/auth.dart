// import 'package:arefapp/Screens/homescreen.dart';
// import 'package:arefapp/Screens/loginscreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class authScreen extends StatelessWidget {
//   const authScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: ((context, snapshot) {
//           if (snapshot.hasData) {
//             print("logd in");
//             return Directionality(
//                 textDirection: TextDirection.ltr, child: HomeSceen());
//           } else {
//             print("noo");
//             return loginScreen();
//           }
//         }),
//       ),
//     );
//   }
// }

import 'package:arefapp/Screens/loginscreen.dart';
import 'package:arefapp/Screens/signupscreen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(onClickSignUp: toggle)
      : SignUpWidget(onClickSignIn: toggle);
  void toggle() => setState(() => isLogin = !isLogin);
}
