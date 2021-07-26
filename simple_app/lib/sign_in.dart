import 'package:flutter/material.dart';
import 'globalVar.dart' as global;


class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  var suggest = "please enter your email and password";

  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.deepPurple,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.only(
                        //  topRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(70.0),
                        //  topLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(70.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    child: Card(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      color: Colors.purple[900],
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25,
                    ),
                    width: double.maxFinite,
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                       
                      
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Email/Username",
                                hintText: "Enter email/ useraname",
                                icon: Icon(Icons.email),
                              ),
                              onChanged: (value) {
                                global.emailmatch = value;
                                if (global.emailmatch != global.email ||
                                    global.emailmatch != global.name) {
                                  check = false;
                                } else {
                                  check = true;
                                }
                              }),
                          TextFormField(
                            //controller:passwordController,
                            decoration: const InputDecoration(
                              labelText: "password",
                              hintText: "Enter password",
                              icon: Icon(Icons.lock),
                            ),
                            onChanged: (value) {
                              global.passmatch = value;
                              if (global.passmatch != global.password) {
                                check = false;
                              } else {
                                check = true;
                              } 
                              
                            },
                           obscureText: true
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            height: 30,
                            child: Text(
                              "Enter your email and pass word",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (global.emailmatch == global.email ||
                                  global.emailmatch == global.name) {
                                if (global.passmatch == global.password) {
                                  Navigator.pushNamed(context, '/MainPage');
                                }
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Warning!"),
                                        content: Text(
                                            "Yor email or password is wrong.\n Please try again."),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/Sign_in');
                                            },
                                            child: Text("Ok"),
                                          ),
                                        ],
                                      );
                                    });
                              }
                            },
                            child: Text(
                              "Sign_in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo[900],
                              onPrimary: Colors.white,
                              onSurface: Colors.pink,
                              elevation: 10.0,
                              padding: EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                                left: 24,
                                right: 24,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Sign_up');
                            },
                            child: Text(
                              "Create an account, If you have not a acount",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.indigo[900]),
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    child: Image.asset(
                      "images/user1.png",
                      width: 150,
                      height: 150,
                    ),
                  )
                ],
              ),
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70.0),
                    topLeft: Radius.circular(70.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
