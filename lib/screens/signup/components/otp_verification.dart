import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController phoneController = TextEditingController();

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
          'OTP Verification',
          style: TextStyle(
            color: Color(0xff194a83),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  'assets/images/img4.png',
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 384,
              height: 339,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "We eill send a Message to\nthe email address you registered\nto regain your password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff194a83),
                        fontSize: 16,
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
                      controller: phoneController,
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
                        suffixIcon: IconButton(
                          icon: Icon(Icons.verified, color: Color(0xfff68b1e)),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                        hintText: "+880 1719 123 123",
                        labelText: "Phone number",
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    "Verification Code sent to +8801719***",
                    style: TextStyle(
                      color: Color(0xff194a83),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  RaisedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => OtpVerification()));
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
                        "Send",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
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
    );
  }
}
