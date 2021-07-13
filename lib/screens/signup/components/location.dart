import 'package:flingex_app/screens/signup/components/finger_print.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectLocation extends StatefulWidget {
  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  TextEditingController cityController = TextEditingController();
  TextEditingController areaController = TextEditingController();

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
          'Select Location',
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
                  'assets/images/img5.png',
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 384,
              height: 314,
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
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 352,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xfff2f2f2),
                      ),
                      child: TextFormField(
                        controller: cityController,
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_drop_down_sharp,
                                color: Color(0xfff68b1e)),
                            onPressed: () {
                              setState(() {});
                            },
                          ),
                          // hintText: "+880 1719 123 123",
                          labelText: "Select Your City",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 352,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xfff2f2f2),
                      ),
                      child: TextFormField(
                        controller: areaController,
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_drop_down_sharp,
                                color: Color(0xfff68b1e)),
                            onPressed: () {
                              setState(() {});
                            },
                          ),
                          // hintText: "+880 1719 123 123",
                          labelText: "Select Your Area",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FingerPrint()));
                    },
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
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            "© 2021 Flingex. All rights reserved.\nDeveloped by Evertech IT",
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
