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
            padding: const EdgeInsets.all(13.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/img2.png',
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
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
