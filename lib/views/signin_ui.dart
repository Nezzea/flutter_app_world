import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInUI extends StatefulWidget {
  const SignInUI({Key? key}) : super(key: key);

  @override
  State<SignInUI> createState() => _SignInUIState();
}

class _SignInUIState extends State<SignInUI> {
  bool pwdFlag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'MSU มมส.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/msu_logo1.png',
                height: 150,
              ),
              Text(
                'มหาวิทยาลัยมหาสารคาม',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF333333),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ชื่อผู้ใช้',
                    hintText: 'ป้อนภาษาอังกฤษเท่านั้น',
                    labelStyle: TextStyle(
                      color: Colors.grey[850],
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    suffixIcon: Icon(
                      Icons.anchor,
                    ),
                    // Lebel ทำงานตลอดเวลา
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 10,
                ),
                child: TextField(
                  obscureText: pwdFlag,
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    hintText: 'ป้อนไม่ต่ำกว่า 8 ตัวอักษร',
                    labelStyle: TextStyle(
                      color: Colors.grey[850],
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          pwdFlag = !pwdFlag;
                        });
                      },
                      child: Icon(
                        pwdFlag ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    // Lebel ทำงานตลอดเวลา
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'ลงทะเบียน',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'ลืมรหัสผ่าน',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'เข้าใช้งานระบบ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 5,
                color: Colors.grey[700],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                ),
                label: Text('FaceBook'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.googlePlusG,
                ),
                label: Text('Google'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[900],
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.apple,
                ),
                label: Text('Apple'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
