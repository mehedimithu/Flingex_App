import 'package:flingex_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confrimPasswordController = TextEditingController();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xfff68b1e)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: Color(0xff194a83),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 384,
              height: 720,
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
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: size.height * .15,
                    width: size.width * 0.011,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/images/img2.png',
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Column(
                    children: [
                      Container(
                        width: 352,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff2f2f2),
                        ),
                        child: TextFormField(
                          controller: _fullNameController,
                          decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.person,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            hintText: "Full Name",
                            labelText: "Full Name",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        width: 352,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff2f2f2),
                        ),
                        child: TextFormField(
                          controller: _phoneController,
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
                            hintText: "Phone Number",
                            labelText: "Phone Number",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
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
                                Icons.email,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            hintText: "Email",
                            labelText: "Email",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
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
                                Icons.lock,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            hintText: "Password",
                            labelText: "Password",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        width: 352,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xfff2f2f2),
                        ),
                        child: TextFormField(
                          controller: _confrimPasswordController,
                          decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.lock,
                                color: Color(0xff2162AF),
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                            hintText: "Confirm password",
                            labelText: "Confirm Password",
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: Text(
                                "By creating an account you aggree to our terms of service and privacy policy.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 10,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              activeColor: Color(0xff194a83),
                              checkColor: Colors.white,
                              selected: _value,
                              value: _value,
                              onChanged: (bool? value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
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
                            color: Color(0xff2162af),
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Continue",
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
                                  builder: (context) => LoginPage())),
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                color: Color(0xfff68b1e),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    "Powered by : Real Time Solution Software", textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff194a83),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
