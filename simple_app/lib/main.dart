import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_app/sign_up.dart';
import 'addAddress.dart';
import 'menu.dart';
import 'info.dart';



import 'sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //  home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(title: "HomeScreen"),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Sign_up': (context) => Sign_up(),
        '/Sign_in': (context) => Sign_in(),
        '/MainPage': (context) => MainPage(),
         '/Address':(context)=>AddAdress(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.indigo[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    // alignment:Alignment.center,
                    top: 40,

                    child: Card(
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      color: Colors.purple[900],
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: Text(
                      "This is a simple sign in and sign up form",
                      style: TextStyle(
                        color: Colors.blue[100],
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
               Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  ),
                  width: double.maxFinite,

                  height: 460,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Image.asset(
                  "images/user.png",
                  height: 100,
                  width: 100,
                ),
                Divider(),
                Text("Please! create your Acount or Sign in.",style:TextStyle(fontSize: 20,color: Colors.indigo[900]),),
                
                Divider(),

                SizedBox(height: 40,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Sign_up');
                      },
                      child: Text("Sign up",style:TextStyle(
                        fontSize:20,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo[900],
                            elevation: 10.0,
                            padding: EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                              left: 80,
                              right: 80,
                            )),
                    ),
                    SizedBox(height: 50,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Sign_in');
                      },
                      child: Text("Sign in",style:TextStyle(
                        fontSize:20,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.indigo[900],
                            elevation: 10.0,
                            padding: EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                              left: 80,
                              right: 80,
                            )),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                )),
              
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
