import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  final VoidCallback onClickSignIn;

  const SignUpWidget({
    Key? key,
    required this.onClickSignIn,
  }) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final formKey = GlobalKey<FormState>();
  final passwordCont = TextEditingController();
  final emailCont = TextEditingController();

  Future SignUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailCont.text.trim(), password: passwordCont.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Directionality(
            textDirection: TextDirection.rtl,
            child: Text("البريد الإلكتروني سبق استخدامه",
                style: TextStyle(color: Colors.white, fontFamily: "thin"))),
        backgroundColor: Color.fromARGB(255, 100, 27, 21),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[50],
            body: SafeArea(
              child: ListView(children: [
                Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 72),

                          SizedBox(height: 32),
                          Text("حساب جديد",
                              style:
                                  TextStyle(fontFamily: "blod", fontSize: 38)),
                          SizedBox(height: 42),
                          //name
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20),
                                //name 2
                                SizedBox(
                                  width: 175,
                                  child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        cursorColor: Colors.purple,
                                        style: TextStyle(fontFamily: "mid"),
                                        decoration: InputDecoration(
                                          filled: true,
                                          hintText: "",
                                          labelText: "الاسم الثاني ",
                                          labelStyle: TextStyle(
                                              color: Colors.black87,
                                              fontFamily: "thin"),
                                          border: OutlineInputBorder(),
                                          fillColor: Colors.grey.shade100,
                                          focusedBorder: OutlineInputBorder(
                                              gapPadding: 11,
                                              borderSide: BorderSide(
                                                  color: Colors.purple,
                                                  width: 1.5)),
                                        ),
                                      )),
                                ),
                                SizedBox(width: 20),

                                //name 1
                                SizedBox(
                                  width: 175,
                                  child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: TextFormField(
                                        cursorColor: Colors.purple,
                                        style: TextStyle(fontFamily: "mid"),
                                        decoration: InputDecoration(
                                          filled: true,
                                          hintText: "",
                                          labelText: "الاسم الاول",
                                          labelStyle: TextStyle(
                                              color: Colors.black87,
                                              fontFamily: "thin"),
                                          border: OutlineInputBorder(),
                                          fillColor: Colors.grey.shade100,
                                          focusedBorder: OutlineInputBorder(
                                              gapPadding: 11,
                                              borderSide: BorderSide(
                                                  color: Colors.purple,
                                                  width: 1.5)),
                                        ),
                                      )),
                                ),
                              ]),

                          //email
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, bottom: 15, top: 15),
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextFormField(
                                  controller: emailCont,
                                  cursorColor: Colors.purple,
                                  style: TextStyle(fontFamily: "mid"),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (email) => email != null &&
                                          !EmailValidator.validate(email)
                                      ? "البريد الإلكتروني ليس صالح"
                                      : null,
                                  decoration: InputDecoration(
                                    filled: true,
                                    hintText: "",
                                    labelText: 'البريد الإلكتروني',
                                    labelStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: "thin"),
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.grey.shade100,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.purple, width: 1.5)),
                                  ),
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, bottom: 2),
                            child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextFormField(
                                  controller: passwordCont,
                                  obscureText: true,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (password) => password != null &&
                                          password.length < 6
                                      ? "كلمة المرور يجب أن تكون من 6 خانات أو أكثر"
                                      : null,
                                  cursorColor: Colors.purple,
                                  style: TextStyle(fontFamily: "mid"),
                                  decoration: InputDecoration(
                                    filled: true,
                                    hintText: "",
                                    labelText: "كلمة المرور",
                                    labelStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: "thin"),
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.grey.shade100,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.purple, width: 1.5)),
                                  ),
                                )),
                          ),

                          Padding(
                              padding:
                                  EdgeInsets.only(left: 22, right: 22, top: 40),
                              child: GestureDetector(
                                onTap: SignUp,
                                child: Container(
                                    height: 62,
                                    width: 366,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFC9A7EB),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))),
                                    child: Center(
                                      child: Text("تسجيل الدخول",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: "blod",
                                              color: Colors.white)),
                                    )),
                              )),
                          SizedBox(
                            height: 11,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "عندك حساب ؟ ",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: "thin"),
                                children: [
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = widget.onClickSignIn,
                                      text: "سجل دخول",
                                      style: TextStyle(
                                          fontFamily: "thin",
                                          color: Colors.purple)),
                                ]),
                          ),
                        ]),
                  ),
                )
              ]),
            )));
  }
}
