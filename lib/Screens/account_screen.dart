import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _textButton = "    تعديل معلوماتي";
  bool _changeInfo = false;
  bool _check = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[50],
          body: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: SafeArea(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(35),
                child: Column(children: [
                  SizedBox(
                    height: 98,
                  ),
                  Text(
                    "لمى السحيلي",
                    style: TextStyle(
                      fontFamily: "blod",
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      ": بياناتي",
                      style: TextStyle(
                        fontFamily: "mid",
                        fontSize: 20,
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13,
                      bottom: 2,
                    ),
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          //controller: passwordCont,
                          obscureText: true,

                          cursorColor: Colors.purple,
                          style: TextStyle(fontFamily: "mid"),
                          decoration: InputDecoration(
                            filled: true,
                            enabled: _changeInfo,
                            hintText: "",
                            labelText: "الاسم الكامل",
                            labelStyle: TextStyle(
                                color: Colors.black87, fontFamily: "thin"),
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.5)),
                          ),
                        )),
                  ),

                  //email
                  Padding(
                    padding: EdgeInsets.only(
                        // left: 18, right: 20,
                        bottom: 15,
                        top: 15),
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          //  controller: emailCont,
                          cursorColor: Colors.purple,
                          style: TextStyle(fontFamily: "mid"),

                          decoration: InputDecoration(
                            filled: true,
                            hintText: "",
                            enabled: _changeInfo,
                            labelText: 'البريد الإلكتروني',
                            labelStyle: TextStyle(
                                color: Colors.black87, fontFamily: "thin"),
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.5)),
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      // left: 20,
                      // right: 20,
                      bottom: 5,
                    ),
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          //controller: passwordCont,
                          obscureText: true,

                          cursorColor: Colors.purple,
                          style: TextStyle(fontFamily: "mid"),
                          decoration: InputDecoration(
                            filled: true,
                            enabled: _changeInfo,
                            hintText: "",
                            labelText: "كلمة المرور",
                            labelStyle: TextStyle(
                                color: Colors.black87, fontFamily: "thin"),
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey.shade100,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.5)),
                          ),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _check = !_check;
                            if (_changeInfo == false) {
                              _changeInfo = true;
                              _textButton = "حفظ";
                            }
                            if (_check) {
                              print("inside secound if");
                              _textButton = "    تعديل معلوماتي";
                              _changeInfo = false;
                            }
                            ;
                          });
                        },
                        child: Text(
                          _textButton,
                          style: TextStyle(
                              fontFamily: "thin", color: Colors.purple),
                        ),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      ":" " الإنجازات المكتملة",
                      style: TextStyle(
                        fontFamily: "mid",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[50],
                    ),
                    height: 160,
                    width: 400,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      ":" " المواد المكتملة",
                      style: TextStyle(
                        fontFamily: "mid",
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ]),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[50],
                    ),
                    height: 160,
                    width: 400,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[50],
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        width: 400,
                        height: 65,
                        child: Text("تسجيل خروج",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "mid",
                                fontSize: 22,
                                color:
                                    const Color.fromARGB(255, 163, 30, 21)))),
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                  ),
                ]),
              )),
            ),
          )),
    );
  }
}
