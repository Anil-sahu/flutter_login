import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.maxFinite,
          height: 400,
          decoration: BoxDecoration(
            //  borderRadius:BorderRadius.circular(20),
            color: Colors.purple[900],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(70.0),
              bottomLeft: Radius.circular(70.0),
              topLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                // icon: Icon(Icons.verified_user_outlined),
                child: Text(
                  "Sign_up",
                  style: TextStyle(color: Colors.indigo, fontSize: 30),
                ),

                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  elevation: 10.0,
                  padding: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 80,
                    right: 80,
                  ),
                ),
              ),
              Text(
                "Create an account if you are new.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign_in",
                  style: TextStyle(color: Colors.indigo, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[100],
                  onPrimary: Colors.white,
                  onSurface: Colors.pink,
                  elevation: 10.0,
                  padding: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 80,
                    right: 80,
                  ),
                ),
              ),
              Text(
                "Sign in if you already sign up.",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
             
            ],
          ),
        ),
        Positioned(
          top: -50,
          child: Image.asset(
            "images/user.png",
            width: 100,
            height: 100,
          ),
        )
      ],
    );
  }
}
