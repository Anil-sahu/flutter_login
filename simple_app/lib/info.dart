
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'globalVar.dart' as global;
//const _url = 'https://flutter.dev';
class MainPage extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Profile"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
            ),
          ),
        ],
        backgroundColor:Colors.indigo[900],
      ),
      drawer: Drawer(
      
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(global.name),
              accountEmail: Text(global.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.android
                        ? Colors.indigo[900]
                        : Colors.red,
                child: Image.asset(
                  "images/user.png",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/MainPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.pushNamed(context, '/MainPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("setting"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap:(){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        elevation: 10,
                        title: Text(
                          "Warning!",
                          style: TextStyle(color: Colors.red),
                        ),
                        content: Text("Are you sure? You want to log out"),
                        actions: [ 
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/MainPage');
                            },
                            child: Text("cancel"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Sign_in');
                            },
                            child: Text("Yes! LogOut"),
                          ),
                         
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
      body: Center(
        // child:Card(),
        child: Container(
          color: Colors.white,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Column(
              children: [
               
                Image.asset(
                  "images/user1.png",
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  child: Text(
                    "profile",
                    style: TextStyle(color: Colors.indigo, fontSize: 20),
                  ),
                ),
              ],
            ),
            Text(
              "Check your deatail",
              style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 30,
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      global.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("It is your UserName"),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text(
                      global.email,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("It is your email"),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text("${global.locality}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("It is your locality"),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text(
                      "${global.city}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("It is your city"),
                    trailing: Icon(Icons.edit),
                  ),
                  ListTile(
                    title: Text(
                      "${global.pincode}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text("It is pincod"),
                    trailing: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed:(){
              Navigator.pushNamed(context,'/Address');
            },
            child:Text("Add Address"))
          ]),
        ),
      ),
    );
  }
//  _launchURL() async =>
// await canLaunch(_url)? await launch(_url):throw "could not launch $_url";
}
//registration-f2a53

