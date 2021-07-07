import 'dart:ui';
import 'package:flingex_app/screens/signup/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  late String password;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _showcontent() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
              height: 70,
              width: 50,
              child: Image.asset('assets/images/img3.png')),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'Fringer Print',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text('Used finger print to unlock',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10,bottom: 5),
                  child: Container(
                    width: 244,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffe6f4ff),
                    ),
                    child: FlatButton(
                      child: Text('Cancel', textAlign: TextAlign.center,),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            ),

          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: size.height * .12,
                          width: size.width * 1.011,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        child: Image.asset(
                          'assets/images/img1.png',
                          height: size.height * .22,
                          width: size.width * 1.011,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        "Welcome Back John!",
                        style: TextStyle(
                          color: Color(0xff2162af),
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Sign in to continue",
                        style: TextStyle(
                          color: Color(0xfff68b1e),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  width: 384,
                  height: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x262062af),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 352,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff2f2f2),
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.call,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            hintText: "Phone",
                            labelText: "Phone",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Container(
                        width: 352,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff2f2f2),
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: IconButton(
                              icon: Icon(
                                hidePassword == true
                                    ? Icons.lock
                                    : Icons.lock_open,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                            ),
                            hintText: 'Password',
                            labelText: 'Password',
                          ),
                          onSaved: (value) => password = value!,
                          obscureText: hidePassword,
                          // obscureText: true,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              "Forget password?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xfff68b1e),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
                      RaisedButton(
                        onPressed: () {
                          // _onFormSubmitted();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage(
                          //               size: MediaQuery.of(context).size,
                          //             )));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 352,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xff2162AF)),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Sign in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      RaisedButton(
                        onPressed: _showcontent,
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 352,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xff2162AF)),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Sign in with Finger print",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage())),
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?   ",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            Text(
                              "Sign up!",
                              style: TextStyle(
                                color: Color(0xfff68b1e),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "Powered by : Real Time Solution Software",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff194a83),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
