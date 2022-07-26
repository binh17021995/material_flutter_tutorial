
import 'package:flutter/material.dart';
import 'package:material_flutter_tutorial/log_in/login_screen/input_decoration.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyLogin();
  }
}

void creatUser() {

}

class _MyLogin extends State<LogIn> {
  final emailControler = TextEditingController();
  final passControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 150),
                  child: Container(
                    color: const Color(0xFFB3E5FC),
                    margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/ic_launcher.png',
                              scale: 1,
                            ),
                            const Text(
                              "Wellcome to Flutter",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                    radius: 50,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: [AutofillHints.email],
                        controller: emailControler,
                        style:
                        const TextStyle(fontSize: 18, color: Colors.black),
                        cursorColor: Colors.black,
                        decoration: inputDecoration(
                            Icons.email, "Email or number phone"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                          obscureText: true,
                          controller: passControler,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          cursorColor: Colors.black,
                          decoration: inputDecoration(Icons.key, "Password")),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        child: Text(
                          "LogIn",
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                        // do something
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        child: Text("Đăng ký tài khoản?"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
