import 'package:flutter/material.dart';



import 'globalVar.dart' as global;

class Sign_up extends StatefulWidget {
   const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  // final _auth =FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.maxFinite,
        color: Colors.deepPurple,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        "sign Up",
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
                    width: double.maxFinite,
                    height: 470,
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25,
                    ),
                    decoration: BoxDecoration(
                      //  borderRadius:BorderRadius.circular(20),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70.0),
                        bottomLeft: Radius.circular(70.0),
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            TextFormField(
                              //   controller: nameController,
                              decoration: const InputDecoration(
                                labelText: "Username",
                                icon: Icon(Icons.person),
                                hintText: "Enter a username",
                              ),
                              validator: (value) {
                                global.name = value;
                                if (value!.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return "Please enter correct name";
                                } else {
                                  return null;
                                }
                              },
                              // keyboardType:TextInputType.name,
                            ),
                            TextFormField(
                              // controller: emailController,
                              decoration: const InputDecoration(
                                  labelText: "email",
                                  icon: Icon(Icons.email),
                                  hintText: "Enter your email address"),
                              validator: (value) {
                                global.email = value;
                                if (value!.isEmpty ||
                                    RegExp(r'^[\w-\.]+@([\w-]_\.)+[\w-]{2-4}')
                                        .hasMatch(value)) {
                                  return "Please enter correct name";
                                } else {
                                  return null;
                                }
                              },
                              //keyboardType:TextInputType.emailAddress,
                            ),
                            TextFormField(
                              //controller: passwordController,
                              decoration: const InputDecoration(
                                  labelText: "password",
                                  icon: Icon(Icons.lock),
                                  hintText: "create a password"),
                              validator: (value) {
                                global.password = value;
                                
                                if (value!.isEmpty ||
                                    !RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*~_-]).{8,}$')
                                        .hasMatch(value)) {
                                  return "Password should be cantaine at least one uppercass, lowercase, digit, special symbol";
                                } else {
                                  return null;
                                }
                              },
                              obscureText:true,
                              
                            ),
                              TextFormField(
                              //controller: passwordController,
                              decoration: const InputDecoration(
                                  labelText: "Confirm password",
                                  icon: Icon(Icons.lock),
                                  hintText: "create a password"),
                              validator: (value) {
                                global.con_password = value;
                                if (global.con_password!=global.password){
                                  return "Your password is not matched";
                                } else {
                                  return null;
                                }
                              },
                               obscureText: true,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/MainPage');
                                }
                              },
                           
                              child: Text(
                                "Sign_up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.indigo[900],
                                  elevation: 10.0,
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                    left: 24,
                                    right: 24,
                                  )),
                            ),
                            TextButton(
                              onPressed: () {
                             Navigator.pushNamed(context,'/Sign_in');
                              },
                              child: Text(
                                "Click here if you have already Signin.",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.indigo),
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
                  ),
                  Positioned(
                    top: -50,
                    child: Image.asset(
                      "images/user1.png",
                      width: 100,
                      height: 100,
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
                    //bottomLeft: Radius.circular(70.0),
                    topLeft: Radius.circular(70.0),
                    //bottomRight: Radius.circular(70.0),
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
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
